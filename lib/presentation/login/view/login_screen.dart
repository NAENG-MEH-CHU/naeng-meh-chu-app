import 'dart:async';
import 'dart:convert' as convert;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_login/flutter_naver_login.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:naeng_meh_chu/core/app_bar/primary_app_bar.dart';
import 'package:naeng_meh_chu/core/button/login_button.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_color.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_text_style.dart';

import '../../../main.dart';

final GoogleSignIn googleSignIn = GoogleSignIn();
const storage = FlutterSecureStorage();

const List<String> scopes = <String>[
  'email',
  'https://www.googleapis.com/auth/contacts.readonly',
];

GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: scopes,
);

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // google
  GoogleSignInAccount? _currentUser;
  bool _isAuthorized = false;
  String _contactText = '';

  // naver
  bool isLogin = false;
  String? accessToken;
  String? expiresAt;
  String? tokenType;
  String? name;
  String? refreshToken;

  void _showSnackError(String error) {
    snackBarKey.currentState?.showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        content: Text(error.toString()),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    _googleSignIn.onCurrentUserChanged
        .listen((GoogleSignInAccount? account) async {
      bool isAuthorized = account != null;
      if (kIsWeb && account != null) {
        isAuthorized = await _googleSignIn.canAccessScopes(scopes);
      }

      setState(() {
        _currentUser = account;
        _isAuthorized = isAuthorized;
        print(_currentUser);
      });

      if (isAuthorized) {
        unawaited(_handleGetContact(account!));
      }
    });
    _googleSignIn.signInSilently();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PrimaryAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image/img_logo.png',
              width: 90,
              height: 90,
              fit: BoxFit.cover,
            ),
            const Text(
              '냉메추',
              style: NaengMehChuThemeTextStyle.pinkBold24,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                '냉장고 관리를 받아\n맞춤 레시피를 추천받아 보세요!',
                style: NaengMehChuThemeTextStyle.gray3Medium11,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            LoginButton(
              onPressed: () {
                googleSignIn();
              },
              borderSide: const BorderSide(
                  width: 1.0, color: NaengMehChuThemeColor.gray2),
              svgPicture: SvgPicture.asset(
                'assets/icon/ic_google.svg',
                height: 36,
                fit: BoxFit.none,
              ),
              text: '구글로 시작하기',
            ),
            LoginButton(
              onPressed: () {
                naverSignIn();
              },
              backgroundColor: NaengMehChuThemeColor.naverColor,
              svgPicture: SvgPicture.asset(
                'assets/icon/ic_naver.svg',
                width: 36,
                height: 36,
                colorFilter: const ColorFilter.mode(
                    NaengMehChuThemeColor.white, BlendMode.srcIn),
              ),
              text: '네이버로 시작하기',
            ),
          ],
        ),
      ),
    );
  }

  Future<void> googleSignIn() async {
    try {
      await _googleSignIn.signIn(); // Google Sign-In 실행

      // 현재 사용자의 인증 헤더 가져오기
      final GoogleSignInAccount? user = _googleSignIn.currentUser;
      if (user == null) {
        throw Exception("Google Sign-In failed");
      }

      // 인증 토큰 가져오기
      final Map<String, String> authHeaders = await user.authHeaders;
      print(authHeaders);

      final String? idToken = authHeaders['Authorization'];
      print(idToken);

      if (idToken == null) {
        throw Exception("Missing ID token");
      }
    } catch (error) {
      print('Error during Google Sign-In: $error');
    }
  }

  Future<void> naverSignIn() async {
    try {
      final NaverLoginResult res = await FlutterNaverLogin.logIn();
      setState(() {
        name = res.account.nickname;
        isLogin = true;
        buttonTokenPressed();
      });
    } catch (error) {
      _showSnackError(error.toString());
    }
  }

  Future<void> buttonTokenPressed() async {
    try {
      final NaverAccessToken res = await FlutterNaverLogin.currentAccessToken;
      setState(() {
        refreshToken = res.refreshToken;
        accessToken = res.accessToken;
        tokenType = res.tokenType;
        print(refreshToken);
        print(accessToken);
        print(tokenType);
      });
    } catch (error) {
      _showSnackError(error.toString());
    }
  }

  Future<void> buttonLogoutPressed() async {
    try {
      await FlutterNaverLogin.logOut();
      setState(() {
        isLogin = false;
        accessToken = null;
        tokenType = null;
        name = null;
      });
    } catch (error) {
      _showSnackError(error.toString());
    }
  }

  Future<void> buttonLogoutAndDeleteTokenPressed() async {
    try {
      await FlutterNaverLogin.logOutAndDeleteToken();
      setState(() {
        isLogin = false;
        accessToken = null;
        tokenType = null;
        name = null;
      });
    } catch (error) {
      _showSnackError(error.toString());
    }
  }

  Future<void> buttonGetUserPressed() async {
    try {
      final NaverAccountResult res = await FlutterNaverLogin.currentAccount();
      setState(() => name = res.name);
    } catch (error) {
      _showSnackError(error.toString());
    }
  }

  Future<void> _handleGetContact(GoogleSignInAccount user) async {
    setState(() {
      _contactText = 'Loading contact info...';
    });
    final http.Response response = await http.get(
      Uri.parse('https://people.googleapis.com/v1/people/me/connections'
          '?requestMask.includeField=person.names'),
      headers: await user.authHeaders,
    );
    if (response.statusCode != 200) {
      setState(() {
        _contactText = 'People API gave a ${response.statusCode} '
            'response. Check logs for details.';
      });
      print('People API ${response.statusCode} response: ${response.body}');
      return;
    }
    final Map<String, dynamic> data =
        convert.jsonDecode(response.body) as Map<String, dynamic>;
    final String? namedContact = _pickFirstNamedContact(data);
    setState(() {
      if (namedContact != null) {
        _contactText = 'I see you know $namedContact!';
      } else {
        _contactText = 'No contacts to display.';
      }
    });
  }

  String? _pickFirstNamedContact(Map<String, dynamic> data) {
    final List<dynamic>? connections = data['connections'] as List<dynamic>?;
    final Map<String, dynamic>? contact = connections?.firstWhere(
      (dynamic contact) => (contact as Map<Object?, dynamic>)['names'] != null,
      orElse: () => null,
    ) as Map<String, dynamic>?;
    if (contact != null) {
      final List<dynamic> names = contact['names'] as List<dynamic>;
      final Map<String, dynamic>? name = names.firstWhere(
        (dynamic name) =>
            (name as Map<Object?, dynamic>)['displayName'] != null,
        orElse: () => null,
      ) as Map<String, dynamic>?;
      if (name != null) {
        return name['displayName'] as String?;
      }
    }
    return null;
  }

  Future<void> _handleAuthorizeScopes() async {
    final bool isAuthorized = await _googleSignIn.requestScopes(scopes);
    setState(() {
      _isAuthorized = isAuthorized;
    });
    if (isAuthorized) {
      unawaited(_handleGetContact(_currentUser!));
    }
  }

  Future<void> _handleSignOut() => _googleSignIn.disconnect();


}
