import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:naeng_meh_chu/core/app_bar/left_back_button_app_bar.dart';
import 'package:naeng_meh_chu/core/text_form/primary_text_form_field.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_text_style.dart';
import 'package:naeng_meh_chu/presentation/sign_up/view/sign_up_gender.dart';
import 'package:naeng_meh_chu/presentation/sign_up/view/sign_up_nickname.dart';
import 'package:naeng_meh_chu/presentation/sign_up/view/sign_up_profile.dart';

class SignUpScreen extends ConsumerWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const LeftBackButtonAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SignUpProfile(),
              const SignUpNickname(),
              const SignUpGender(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  children: [
                    const Text(
                      '성별',
                      style: NaengMehChuThemeTextStyle.blackMedium12,
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    SvgPicture.asset('assets/icon/ic_check.svg'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
