import 'package:naeng_meh_chu/data/data_source/fridge_api_service.dart';

class FridgeRepository {
  static Future<String> allFridge() async {
    String? response = await FridgeApiService().allFridge();
    print(response);
    return response;
  }
}
