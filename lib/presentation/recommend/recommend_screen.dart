import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:naeng_meh_chu/core/app_bar/left_back_button_app_bar.dart';
import 'package:naeng_meh_chu/core/button/pink_button.dart';
import 'package:naeng_meh_chu/core/button/white_button.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_text_style.dart';
import 'package:naeng_meh_chu/presentation/detail_recipe/detail_recipe_screen.dart';

import '../../core/theme/naeng_meh_chu_theme_color.dart';

class RecommendScreen extends ConsumerWidget {
  const RecommendScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenHeight = MediaQuery.of(context).size.height;
    final containerHeight = screenHeight / 3;

    return Scaffold(
      appBar: LeftBackButtonAppBar(
        title: '추천 레시피',
        onPress: () {
          Navigator.pop(context);
        },
      ),
      body: Column(
        children: [
          Container(
            height: containerHeight,
            padding: const EdgeInsets.all(32.0),
            decoration: ShapeDecoration(
              color: NaengMehChuThemeColor.beige,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          const Text(
            '비빔밥',
            style: NaengMehChuThemeTextStyle.blackBold18,
          ),
          const SizedBox(
            height: 16.0,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                '어쩌구' * 20,
                style: NaengMehChuThemeTextStyle.gray1Regular14,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: WhiteButton(
                        text: '다른 추천 받기', onPressed: () {}, enabled: true),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: PinkButton(
                      text: '레시피 보기',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (builder) => const DetailRecipeScreen(foodName: '비빔밥',),
                          ),
                        );
                      },
                      enabled: true,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
