import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:naeng_meh_chu/core/button/pink_button.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_color.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_text_style.dart';
import 'package:naeng_meh_chu/data/model/fridge_mine_model.dart';
import 'package:naeng_meh_chu/presentation/food_add/food_add_screen.dart';
import 'package:naeng_meh_chu/presentation/refrigerator/view/food_state.dart';
import 'package:naeng_meh_chu/presentation/refrigerator/view/refrigerator_food.dart';
import 'package:naeng_meh_chu/presentation/refrigerator/view_model/fridge_mine_notifier.dart';

import '../../core/app_bar/main_app_bar.dart';

class RefrigeratorScreen extends ConsumerWidget {
  const RefrigeratorScreen({Key? key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<MyIngredient>> fridgeMine =
        ref.watch(fridgeMineNotifierProvider);

    return Scaffold(
      appBar: const MainAppBar(
        actions: [],
        title: '푸매니저님의 냉장고',
        centerTitle: true,
      ),
      body: fridgeMine.when(
        data: (ingredients) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '총 ${ingredients.length}개',
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
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (builder) => const FoodAddScreen(),
                                  ),
                                );
                              },
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '나의 재료',
                                  style: NaengMehChuThemeTextStyle.blackBold14,
                                ),
                                FoodState(),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ingredients.isEmpty
                      ? const Center(child: Text('앗! 아직 재료가 없어요'))
                      : GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            childAspectRatio: 0.8,
                            crossAxisSpacing: 8.0,
                            mainAxisSpacing: 8.0,
                          ),
                          itemCount: ingredients.length,
                          itemBuilder: (context, index) {
                            final ingredient = ingredients[index];
                            return RefrigeratorFood(
                              stateColor: NaengMehChuThemeColor.pink6,
                              name: ingredient.name,
                              dateTime: 'D${ingredient.dueDay}',
                            );
                          },
                        ),
                ),
              ),
              if (ingredients.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: PinkButton(
                        text: '냉장고 털기', onPressed: () {}, enabled: true),
                  ),
                ),
            ],
          );
        },
        error: (error, stack) =>
            Center(child: Text('Error: ${error.toString()}')),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
