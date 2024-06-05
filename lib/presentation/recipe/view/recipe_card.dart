import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/theme/naeng_meh_chu_theme_color.dart';
import '../../../core/theme/naeng_meh_chu_theme_text_style.dart';
import '../view_model/recipe_detail_notifier.dart';

class RecipeCard extends ConsumerStatefulWidget {
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
  _RecipeCardState createState() => _RecipeCardState();
}

class _RecipeCardState extends ConsumerState<RecipeCard> {
  bool _isLinkOpening = false;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final containerHeight = screenHeight / 5;

    ref.listen<AsyncValue<String>>(recipeDetailNotifierProvider, (previous, next) {
      next.when(
        data: (detail) {
          if (_isLinkOpening) return;  // Prevent duplicate link opening

          final decodedDetail = jsonDecode(detail);
          final recipeLink = decodedDetail['recipeLink'];
          if (recipeLink != null) {
            setState(() {
              _isLinkOpening = true;
            });
            launchUrl(Uri.parse(recipeLink)).then((_) {
              setState(() {
                _isLinkOpening = false;
              });
            }).catchError((error) {
              setState(() {
                _isLinkOpening = false;
              });
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Failed to open link: $error')),
              );
            });
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Recipe link is not available')),
            );
          }
        },
        loading: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Loading...')),
          );
        },
        error: (error, stackTrace) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Failed to load recipe detail: $error')),
          );
        },
      );
    });

    return GestureDetector(
      onTap: () async {
        await ref.read(recipeDetailNotifierProvider.notifier).getRecipeDetail(widget.recipeId);
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
                      image: widget.thumbnail,
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
                  widget.title,
                  style: NaengMehChuThemeTextStyle.gray1Medium16,
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Text(
                  widget.description,
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
