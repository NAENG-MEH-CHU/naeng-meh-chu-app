import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/data_source/recipe_api_service.dart';

final recipeDetailNotifierProvider =
StateNotifierProvider.autoDispose<RecipeDetailNotifier, AsyncValue<String>>((ref) {
  final apiService = ref.watch(recipeApiServiceProvider);
  return RecipeDetailNotifier(apiService);
});

class RecipeDetailNotifier extends StateNotifier<AsyncValue<String>> {
  final RecipeApiService _apiService;

  RecipeDetailNotifier(this._apiService) : super(const AsyncLoading());

  Future<void> getRecipeDetail(String recipeId) async {
    state = const AsyncLoading();
    try {
      final detail = await _apiService.getRecipeDetail(recipeId);
      state = AsyncData(detail);
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
      print('Error fetching recipe detail: $error');
    }
  }
}
