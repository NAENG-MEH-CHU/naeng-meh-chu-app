import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:naeng_meh_chu/core/button/pink_button.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_color.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_text_style.dart';
import 'package:naeng_meh_chu/presentation/refrigerator/view/refrigerator_food.dart';

import '../../core/app_bar/main_app_bar.dart';

class RefrigeratorScreen extends ConsumerWidget {
  const RefrigeratorScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const MainAppBar(
        title: '푸매니저님의 냉장고',
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '총 0개',
                          style: NaengMehChuThemeTextStyle.gray2Regular11,
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child:
                                  SvgPicture.asset('assets/icon/ic_trash.svg'),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: SvgPicture.asset('assets/icon/ic_add.svg'),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: ShapeDecoration(
                        color: NaengMehChuThemeColor.pink6,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  '냉동 보관',
                                  style: NaengMehChuThemeTextStyle.blackBold14,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 16.0,
                            ),
                            Row(
                              children: [
                                RefrigeratorFood(
                                  name: '윙 봉',
                                  dateTime: '2024-04-10',
                                  stateColor: NaengMehChuThemeColor.normal,
                                ),
                                SizedBox(
                                  width: 16.0,
                                ),
                                RefrigeratorFood(
                                  name: '동그랑땡',
                                  dateTime: '2024-04-10',
                                  stateColor: NaengMehChuThemeColor.good,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: ShapeDecoration(
                        color: NaengMehChuThemeColor.pink6,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  '냉동 보관',
                                  style: NaengMehChuThemeTextStyle.blackBold14,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 800,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: double.infinity,
              child:
                  PinkButton(text: '냉장고 털기', onPressed: () {}, enabled: true),
            ),
          )
        ],
      ),
    );
  }
}
