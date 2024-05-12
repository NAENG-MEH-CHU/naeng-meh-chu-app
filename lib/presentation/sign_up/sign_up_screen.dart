import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:naeng_meh_chu/core/app_bar/left_back_button_app_bar.dart';
import 'package:naeng_meh_chu/core/button/pink_button.dart';
import 'package:naeng_meh_chu/core/button/white_button.dart';
import 'package:naeng_meh_chu/presentation/sign_up/view/sign_up_finish.dart';
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
          ref.invalidate(signUpMoveProvider);
        },
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Consumer(
            builder: (context, ref, _) {
              switch (nowPage) {
                case 'first':
                  return const Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: SignUpFirstProfile()),
                    ),
                  );
                case 'second':
                  return const Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: SignUpSecondMotivation()),
                    ),
                  );
                case 'third':
                  return const Expanded(child: SignUpFinish());
                default:
                  return Container();
              }
            },
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
                      nowPage == 'second'
                          ? Expanded(
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
                            )
                          : Container(),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: PinkButton(
                            onPressed: () {
                              switch (nowPage) {
                                case 'first':
                                  ref
                                      .read(signUpMoveProvider.notifier)
                                      .moveToSecondPage();
                                  break;

                                case 'second':
                                  ref
                                      .read(signUpMoveProvider.notifier)
                                      .moveToThirdPage();
                                  break;

                                case 'third':
                                  ref
                                      .read(signUpMoveProvider.notifier)
                                      .moveToHome();
                                  break;

                                default:
                                  throw Exception('회원가입 페이지 에러 발생');
                              }
                            },
                            enabled: nowPage != 'first'
                                ? ref.watch(motivationProvider).contains(true)
                                : ref
                                    .watch(signUpMemberProfileProvider)
                                    .isComplete,
                            text: nowPage != 'third' ? '다음' : '시작하기',
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
