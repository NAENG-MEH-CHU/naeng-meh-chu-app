import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:naeng_meh_chu/data/model/recipe_data_response.dart';
import 'package:naeng_meh_chu/data/repository/fridge_repository.dart';

final recipeDataResponseProvider = StateNotifierProvider<RecipeNotifier, AsyncValue<List<RecipeDataResponse>>>((ref) {
  return RecipeNotifier();
});

class RecipeNotifier extends StateNotifier<AsyncValue<List<RecipeDataResponse>>> {
  RecipeNotifier() : super(const AsyncValue.loading()) {
    _fetchRecipes();
  }

  int _page = 0;
  final int _limit = 10;
  bool _hasNextPage = true;

  Future<void> _fetchRecipes({bool isRefresh = false}) async {
    if (isRefresh) {
      _page = 0;
      _hasNextPage = true;
      state = const AsyncValue.loading();
    } else {
      _page++;
    }

    try {
      final response = await FridgeRepository.allRecipe();
      final json = jsonDecode(response) as Map<String, dynamic>;
      final dataList = json['recipeDataResponses'] as List<dynamic>;

      final fetchedRecipes = dataList
          .skip(_page * _limit)
          .take(_limit)
          .map((data) => RecipeDataResponse.fromJson(data as Map<String, dynamic>))
          .toList();

      if (fetchedRecipes.length < _limit) {
        _hasNextPage = false;
      }

      state = AsyncValue.data([
        if (state.value != null && !isRefresh) ...state.value!,
        ...fetchedRecipes,
      ]);
    } catch (e) {
    }
  }

  void fetchMoreRecipes() {
    if (_hasNextPage) {
      _fetchRecipes();
    }
  }

  void refreshRecipes() {
    _fetchRecipes(isRefresh: true);
  }
}
