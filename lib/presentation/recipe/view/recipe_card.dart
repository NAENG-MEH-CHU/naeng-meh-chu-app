import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/theme/naeng_meh_chu_theme_color.dart';
import '../../../core/theme/naeng_meh_chu_theme_text_style.dart';

class RecipeCard extends ConsumerWidget {
  const RecipeCard({super.key, required this.title, required this.description});

  final String title;
  final String description;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenHeight = MediaQuery.of(context).size.height;
    final containerHeight = screenHeight / 5;

    return Padding(
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
                      borderRadius: BorderRadius.circular(12),
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
