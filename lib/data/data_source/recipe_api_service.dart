import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'api_client.dart';

class RecipeApiService {
  Future<String> allRecipe() async {
    const url = '/api/recipe';
    ApiClient apiClient = ApiClient();

    final response = await apiClient.get(url);
    if (response.statusCode == 200) {
      return utf8.decode(response.body.codeUnits);
    } else {
      throw Exception('Failed to all recipe');
    }
  }

  Future<String> getRecipeDetail(String recipeId) async {
    final url = '/api/recipe/$recipeId';
    ApiClient apiClient = ApiClient();

    final response = await apiClient.get(url);
    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('Failed to fetch recipe detail for ID: $recipeId');
    }
  }


  Future<String> recipe() async {
    const url = '/api/recipe/ingredients';
    ApiClient apiClient = ApiClient();

    final response = await apiClient.get(url);
    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('Failed to Recipe');
    }
  }
}

final recipeApiServiceProvider = Provider<RecipeApiService>((ref) {
  return RecipeApiService();
});
