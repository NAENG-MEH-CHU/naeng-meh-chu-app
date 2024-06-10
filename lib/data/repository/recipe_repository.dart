import 'package:naeng_meh_chu/data/data_source/recipe_api_service.dart';

class RecipeRepository {
  static Future<String> allRecipe() async {
    String? response = await RecipeApiService().allRecipe();
    return response;
  }

  static Future<String> getRecipeDetail(String recipeId) async {
    String? response = await RecipeApiService().getRecipeDetail(recipeId);
    return response;
  }

  static Future<String> recipe() async {
    String? response = await RecipeApiService().recipe();
    return response;
  }
}
