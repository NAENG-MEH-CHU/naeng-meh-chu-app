import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:naeng_meh_chu/data/model/recipe_data_response.dart';
import 'package:naeng_meh_chu/presentation/recommend/recommend_screen.dart';
import 'package:naeng_meh_chu/presentation/refrigerator/view_model/recipe_get_notifier.dart';

class RecommendScreenWithLoading extends ConsumerWidget {
  const RecommendScreenWithLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<RecipeDataResponse>> recipes =
    ref.watch(recipeGetNotifierProvider);

    return recipes.when(
      data: (data) {
        return RecommendScreen(recipes: data);
      },
      loading: () => const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
      error: (error, stack) => Scaffold(
        body: Center(
          child: Text('Error: ${error.toString()}'),
        ),
      ),
    );
  }
}
