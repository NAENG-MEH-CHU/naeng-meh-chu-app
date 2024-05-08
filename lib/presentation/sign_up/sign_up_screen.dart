import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:naeng_meh_chu/core/app_bar/left_back_button_app_bar.dart';
import 'package:naeng_meh_chu/core/button/pink_button.dart';
import 'package:naeng_meh_chu/presentation/sign_up/view/sign_up_first_profile.dart';
import 'package:naeng_meh_chu/presentation/sign_up/view/sign_up_second_motivation.dart';
import 'package:naeng_meh_chu/presentation/sign_up/view_model/sign_up_provider.dart';

import '../../core/theme/naeng_meh_chu_theme_color.dart';

class SignUpScreen extends ConsumerWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String nowPage = ref.watch(signUpMoveProvider);
    return Scaffold(
      appBar: const LeftBackButtonAppBar(),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  nowPage == 'first'
                      ? const SignUpFirstProfile()
                      : const SignUpSecondMotivation()
                ],
              ),
            ),
          ),
          Column(
            children: [
              const Divider(
                color: NaengMehChuThemeColor.gray2,
                height: 2,
              ),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    bottom: 32.0,
                    right: 16.0,
                    top: 16.0,
                  ),
                  child: PinkButton(
                    onPressed: () {
                      ref.read(signUpMoveProvider.notifier).moveToSecondPage();
                    },
                    enabled: ref.watch(signUpMemberProfileProvider).isComplete,
                    text: '다음',
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
