import 'package:naeng_meh_chu/data/data_source/recipe_api_service.dart';

class FridgeRepository {
  static Future<String> allRecipe() async {
    String? response = await RecipeApiService().allRecipe();
    print(response);
    return response;
  }

  static Future<String> getRecipeDetail(String recipeId) async {
    String? response = await RecipeApiService().getRecipeDetail(recipeId);

    print(response);
    return response;
  }
}
