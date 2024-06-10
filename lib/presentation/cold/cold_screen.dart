import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:naeng_meh_chu/core/app_bar/left_back_button_app_bar.dart';
import 'package:naeng_meh_chu/presentation/recipe/view/search_container.dart';
import 'package:naeng_meh_chu/presentation/refrigerator/view/food_state.dart';

import '../../core/theme/naeng_meh_chu_theme_color.dart';
import '../refrigerator/view/refrigerator_food.dart';

class ColdScreen extends ConsumerWidget {
  const ColdScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: LeftBackButtonAppBar(
        title: '냉장 보관',
        onPress: () {
          Navigator.pop(context);
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              Container(
                width: double.infinity,
                decoration: ShapeDecoration(
                  color: NaengMehChuThemeColor.pink6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            RefrigeratorFood(
                              name: '윙 봉',
                              dateTime: '2024-04-10',
                              stateColor: NaengMehChuThemeColor.normal,
                            ),
                            RefrigeratorFood(
                              name: '동그랑땡',
                              dateTime: '2024-04-10',
                              stateColor: NaengMehChuThemeColor.good,
                            ),
                            RefrigeratorFood(
                              name: '동그랑땡',
                              dateTime: '2024-04-10',
                              stateColor: NaengMehChuThemeColor.good,
                            ),
                            RefrigeratorFood(
                              name: '동그랑땡',
                              dateTime: '2024-04-10',
                              stateColor: NaengMehChuThemeColor.good,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            RefrigeratorFood(
                              name: '윙 봉',
                              dateTime: '2024-04-10',
                              stateColor: NaengMehChuThemeColor.normal,
                            ),
                            RefrigeratorFood(
                              name: '동그랑땡',
                              dateTime: '2024-04-10',
                              stateColor: NaengMehChuThemeColor.good,
                            ),
                            RefrigeratorFood(
                              name: '동그랑땡',
                              dateTime: '2024-04-10',
                              stateColor: NaengMehChuThemeColor.good,
                            ),
                            RefrigeratorFood(
                              name: '동그랑땡',
                              dateTime: '2024-04-10',
                              stateColor: NaengMehChuThemeColor.good,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
