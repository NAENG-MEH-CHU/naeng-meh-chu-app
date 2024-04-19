import 'package:flutter/material.dart';
import 'package:flutter_naver_login/flutter_naver_login.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:naeng_meh_chu/core/app_bar/primary_app_bar.dart';
import 'package:naeng_meh_chu/core/button/login_button.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_color.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_text_style.dart';

import '../../../main.dart';

final GoogleSignIn googleSignIn = GoogleSignIn();
const storage = FlutterSecureStorage();

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                buttonLoginPressed();
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

  Future<void> buttonLoginPressed() async {
    try {
      final NaverLoginResult res = await FlutterNaverLogin.logIn();
      final NaverAccessToken token = await FlutterNaverLogin.currentAccessToken;
      setState(() {
        name = res.account.nickname;
        accessToken = token.accessToken;
        isLogin = true;
      });
    } catch (error) {
      _showSnackError(error.toString());
    }
  }

  Future<void> googleLogin() async {
    final GoogleSignInAccount? googleSignInAccount =
    await googleSignIn.signIn();

    final GoogleSignInAuthentication googleSignInAuthentication =
    await googleSignInAccount!.authentication;

    print("구글 액세스 토큰 ${googleSignInAuthentication.accessToken}");
  }
}
