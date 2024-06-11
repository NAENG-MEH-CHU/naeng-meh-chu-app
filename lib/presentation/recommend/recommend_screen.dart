import 'dart:math';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:naeng_meh_chu/core/app_bar/left_back_button_app_bar.dart';
import 'package:naeng_meh_chu/core/button/pink_button.dart';
import 'package:naeng_meh_chu/core/button/white_button.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_text_style.dart';
import 'package:naeng_meh_chu/data/model/recipe_data_response.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/theme/naeng_meh_chu_theme_color.dart';
import '../recipe/view_model/recipe_detail_notifier.dart';

class RecommendScreen extends ConsumerStatefulWidget {
  final List<RecipeDataResponse> recipes;

  const RecommendScreen({super.key, required this.recipes});

  @override
  _RecommendScreenState createState() => _RecommendScreenState();
}

class _RecommendScreenState extends ConsumerState<RecommendScreen> {
  late RecipeDataResponse selectedRecipe;

  @override
  void initState() {
    super.initState();
    if (widget.recipes.isNotEmpty) {
      selectedRecipe = getRandomRecipe();
    }
  }

  RecipeDataResponse getRandomRecipe() {
    final random = Random();
    return widget.recipes[random.nextInt(widget.recipes.length)];
  }

  void getNewRecommendation() {
    setState(() {
      selectedRecipe = getRandomRecipe();
    });
  }

  Future<void> _openLink(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final containerHeight = screenHeight / 3;

    ref.listen<AsyncValue<String>>(recipeDetailNotifierProvider, (previous, next) {
      next.when(
        data: (detail) {
          final decodedDetail = jsonDecode(detail);
          final recipeLink = decodedDetail['recipeLink'];
          if (recipeLink != null) {
            _openLink(recipeLink);
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

    return Scaffold(
      appBar: LeftBackButtonAppBar(
        title: '추천 레시피',
        onPress: () {
          Navigator.pop(context);
        },
      ),
      body: widget.recipes.isEmpty
          ? const Center(
        child: Text(
          '앗! 만들 수 있는 레시피가 없어요',
          style: NaengMehChuThemeTextStyle.pinkBold14,
        ),
      )
          : Column(
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
            child: Image.network(
              selectedRecipe.thumbnail,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            selectedRecipe.name,
            style: NaengMehChuThemeTextStyle.blackBold18,
          ),
          const SizedBox(
            height: 16.0,
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: WhiteButton(
                      text: '다른 추천 받기',
                      onPressed: getNewRecommendation,
                      enabled: true,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: PinkButton(
                      text: '레시피 보기',
                      onPressed: () async {
                        await ref
                            .read(recipeDetailNotifierProvider.notifier)
                            .getRecipeDetail(selectedRecipe.id);
                      },
                      enabled: true,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
