import 'package:flutter/material.dart';
import 'package:naeng_meh_chu/core/app_bar/primary_app_bar.dart';
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
            )
          ],
        ),
      ),
    );
  }
}
