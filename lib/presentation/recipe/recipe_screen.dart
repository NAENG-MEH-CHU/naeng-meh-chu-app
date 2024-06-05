import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:naeng_meh_chu/data/model/recipe_data_response.dart';
import 'package:naeng_meh_chu/presentation/recipe/view/recipe_card.dart';
import 'package:naeng_meh_chu/presentation/recipe/view/search_container.dart';
import 'package:naeng_meh_chu/presentation/recipe/view_model/all_recipe_notifier.dart';

import '../../core/app_bar/main_app_bar.dart';

class RecipeScreen extends ConsumerWidget {
  const RecipeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<RecipeDataResponse>> recipe =
        ref.watch(recipeDataResponseProvider);

    return Scaffold(
      appBar: const MainAppBar(
        title: '레시피',
      ),
      body: recipe.when(
        data: (recipes) => SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SearchContainer(
                  message: '오늘의 레시피를 검색해 보세요',
                ),
                const SizedBox(
                  height: 32.0,
                ),
                ...recipes
                    .map((recipe) => RecipeCard(
                          title: recipe.name,
                          description: '',
                          thumbnail: recipe.thumbnail,
                        )),
              ],
            ),
          ),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
    );
  }
}
