import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:naeng_meh_chu/data/model/recipe_data_response.dart';
import 'package:naeng_meh_chu/presentation/recipe/view/recipe_card.dart';
import 'package:naeng_meh_chu/presentation/recipe/view_model/all_recipe_notifier.dart';

import '../../core/app_bar/main_app_bar.dart';

class RecipeScreen extends ConsumerStatefulWidget {
  const RecipeScreen({super.key});

  @override
  ConsumerState<RecipeScreen> createState() => _RecipeScreenState();
}

class _RecipeScreenState extends ConsumerState<RecipeScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      ref.read(recipeDataResponseProvider.notifier).fetchMoreRecipes();
    }
  }

  @override
  Widget build(BuildContext context) {
    final AsyncValue<List<RecipeDataResponse>> recipe =
        ref.watch(recipeDataResponseProvider);

    return Scaffold(
      appBar: const MainAppBar(
        title: '레시피',
      ),
      body: recipe.when(
        data: (recipes) => ListView.builder(
          controller: _scrollController,
          itemCount: recipes.length + 1,
          itemBuilder: (context, index) {
            if (index < recipes.length) {
              final recipe = recipes[index];
              return RecipeCard(
                title: recipe.name,
                description: '',
                thumbnail: recipe.thumbnail,
                recipeId: recipe.id,
              );
            } else {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Center(child: CircularProgressIndicator()),
              );
            }
          },
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
    );
  }
}
