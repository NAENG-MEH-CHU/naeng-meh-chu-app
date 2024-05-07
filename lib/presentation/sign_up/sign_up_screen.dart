import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:naeng_meh_chu/core/app_bar/left_back_button_app_bar.dart';
import 'package:naeng_meh_chu/presentation/sign_up/view/sign_up_first_profile.dart';

import '../../core/theme/naeng_meh_chu_theme_color.dart';
import '../../core/theme/naeng_meh_chu_theme_text_style.dart';

class SignUpScreen extends ConsumerWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const LeftBackButtonAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SignUpFirstProfile()
                  ],
                ),
              ),
            ),
            // PrimaryButton(onPressed: () {}, enabled: true, text: '다음')
            GestureDetector(
              onTap: () {},
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16.0),
                alignment: Alignment.center,
                decoration: ShapeDecoration(
                  color: NaengMehChuThemeColor.pink,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  '다음',
                  style: NaengMehChuThemeTextStyle.whiteMedium15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
