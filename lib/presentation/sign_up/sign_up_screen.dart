import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:naeng_meh_chu/core/app_bar/left_back_button_app_bar.dart';
import 'package:naeng_meh_chu/core/button/pink_button.dart';
import 'package:naeng_meh_chu/core/button/white_button.dart';
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
      appBar: LeftBackButtonAppBar(
        onPress: () {
          Navigator.pop(context);
          ref.invalidate(signUpMemberProfileProvider);
        },
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: nowPage == 'first'
                      ? const SignUpFirstProfile()
                      : const SignUpSecondMotivation()),
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
                      left: 16.0, right: 16.0, top: 16.0, bottom: 32.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Visibility(
                        visible: nowPage != "first",
                        child: Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: WhiteButton(
                            onPressed: () {
                              ref
                                  .read(signUpMoveProvider.notifier)
                                  .moveToFirstPage();
                            },
                            enabled: true,
                            text: '이전',
                          ),
                        ),
                      )),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: PinkButton(
                            onPressed: () {
                              ref
                                  .read(signUpMoveProvider.notifier)
                                  .moveToSecondPage();
                            },
                            enabled: ref
                                .watch(signUpMemberProfileProvider)
                                .isComplete,
                            text: '다음',
                          ),
                        ),
                      ),
                    ],
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
