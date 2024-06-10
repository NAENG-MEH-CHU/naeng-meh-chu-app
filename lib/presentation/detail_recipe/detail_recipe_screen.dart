import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:naeng_meh_chu/core/app_bar/left_back_button_app_bar.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_text_style.dart';
import 'package:naeng_meh_chu/data/model/recipe_data_response.dart';
import '../../core/theme/naeng_meh_chu_theme_color.dart';

class DetailRecipeScreen extends ConsumerWidget {
  final RecipeDataResponse recipe;

  const DetailRecipeScreen({super.key, required this.recipe});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenHeight = MediaQuery.of(context).size.height;
    final containerHeight = screenHeight / 5;

    return Scaffold(
      appBar: LeftBackButtonAppBar(
        onPress: () {
          Navigator.pop(context);
        },
        title: recipe.name,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: NaengMehChuThemeColor.pinkBackground,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                      child: Image.network(recipe.thumbnail, fit: BoxFit.cover),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Text(
                      '${recipe.name}은 한국의 전통 음식 중 하나로, 다양한 재료를 함께 섞어 만든 요리에요! 기본적인 ${recipe.name} 레시피를 소개합니다.',
                      style: NaengMehChuThemeTextStyle.gray1Regular12,
                    ),
                    const SizedBox(
                      height: 32.0,
                    ),
                    const Text(
                      '재료',
                      style: NaengMehChuThemeTextStyle.gray1Bold12,
                    ),
                    Text(
                      '설명' * 50,
                      style: NaengMehChuThemeTextStyle.gray1Regular12,
                    ),
                    const SizedBox(
                      height: 32.0,
                    ),
                    const Text(
                      '조리 과정',
                      style: NaengMehChuThemeTextStyle.gray1Bold12,
                    ),
                    Text(
                      '설명' * 50,
                      style: NaengMehChuThemeTextStyle.gray1Regular12,
                    ),
                    Text(
                      '설명' * 50,
                      style: NaengMehChuThemeTextStyle.gray1Regular12,
                    ),
                    Text(
                      '설명' * 50,
                      style: NaengMehChuThemeTextStyle.gray1Regular12,
                    ),
                    Text(
                      '설명' * 50,
                      style: NaengMehChuThemeTextStyle.gray1Regular12,
                    ),
                    Text(
                      '설명' * 50,
                      style: NaengMehChuThemeTextStyle.gray1Regular12,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
