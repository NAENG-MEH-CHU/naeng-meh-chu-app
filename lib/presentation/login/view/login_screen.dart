import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:naeng_meh_chu/core/app_bar/primary_app_bar.dart';
import 'package:naeng_meh_chu/core/button/login_button.dart';
import 'package:naeng_meh_chu/core/button/primary_button.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_color.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_text_style.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
            LoginButton(
              backgroundColor: NaengMehChuThemeColor.white,
              svgPicture: SvgPicture.asset(
                'assets/icon/ic_google.svg',
                height: 36,
                fit: BoxFit.none,
              ),
              text: '구글로 시작하기',
            ),
            LoginButton(
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
}
