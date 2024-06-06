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
}
