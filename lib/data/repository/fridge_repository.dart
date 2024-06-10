import 'package:naeng_meh_chu/data/data_source/fridge_api_service.dart';

class FridgeRepository {
  static Future<String> allFridge() async {
    String? response = await FridgeApiService().allFridge();
    return response;
  }

  static Future<String> fridgeMine() async {
    String? response = await FridgeApiService().fridgeMine();
    return response;
  }

  static Future<String> addFood(
    int ingredientId,
    int year,
    int month,
    int day,
  ) async {
    String response =
        await FridgeApiService().fridgeAdd(ingredientId, year, month, day);
    return response;
  }
}
