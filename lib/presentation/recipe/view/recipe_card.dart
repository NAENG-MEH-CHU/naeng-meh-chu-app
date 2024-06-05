import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/theme/naeng_meh_chu_theme_color.dart';
import '../../../core/theme/naeng_meh_chu_theme_text_style.dart';
import '../view_model/recipe_detail_notifier.dart';

class RecipeCard extends ConsumerWidget {
  const RecipeCard({
    Key? key,
    required this.title,
    required this.description,
    required this.thumbnail,
    required this.recipeId,
  }) : super(key: key);

  final String title;
  final String description;
  final String thumbnail;
  final String recipeId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenHeight = MediaQuery.of(context).size.height;
    final containerHeight = screenHeight / 5;

    return GestureDetector(
      onTap: () async {
        await ref.read(recipeDetailNotifierProvider.notifier).getRecipeDetail(recipeId);
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: Container(
          width: double.infinity,
          decoration: ShapeDecoration(
            color: NaengMehChuThemeColor.pinkBackground,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: containerHeight,
                  decoration: BoxDecoration(
                    color: NaengMehChuThemeColor.beige,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: FadeInImage.assetNetwork(
                      placeholder: 'assets/image/img_logo.png',
                      image: thumbnail,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: containerHeight,
                      imageErrorBuilder: (context, error, stackTrace) {
                        return Image.asset(
                          'assets/image/img_logo.png',
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: containerHeight,
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Text(
                  title,
                  style: NaengMehChuThemeTextStyle.gray1Medium16,
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Text(
                  description,
                  style: NaengMehChuThemeTextStyle.gray1Regular12,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
