import 'dart:convert';

import 'api_client.dart';

class FridgeApiService {
  Future<String> allFridge() async {
    const url = '/api/fridge';
    ApiClient apiClient = ApiClient();

    final response = await apiClient.get(url);
    if (response.statusCode == 200) {
      return utf8.decode(response.body.codeUnits);
    } else {
      throw Exception('Failed to all fridge');
    }
  }

  Future<String> fridgeMine() async {
    const url = '/api/fridge/mine';
    ApiClient apiClient = ApiClient();

    final response = await apiClient.get(url);
    if (response.statusCode == 200) {
      return utf8.decode(response.body.codeUnits);
    } else {
      throw Exception('Failed to all fridge');
    }
  }
}
