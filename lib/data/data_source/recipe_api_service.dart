import 'dart:convert';

import 'api_client.dart';


class RecipeApiService {
  Future<String> allRecipe() async {
    const url = '/api/recipe';
    ApiClient apiClient = ApiClient();

    final response = await apiClient.get(url);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('Failed to all recipe');
    }
  }
}
