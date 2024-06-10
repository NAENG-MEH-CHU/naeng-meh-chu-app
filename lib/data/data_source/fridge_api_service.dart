import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

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

  Future<String> fridgeAdd(
      int ingredientId, int year, int month, int day) async {
    const url = '/api/fridge';
    ApiClient apiClient = ApiClient();
    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    final body = jsonEncode({
      'ingredientId': ingredientId,
      'year': year,
      'month': month,
      'day': day,
    });

    final response = await apiClient.post(url, headers: headers, body: body);

    if (response.statusCode == 200) {
      return utf8.decode(response.body.codeUnits);
    } else {
      throw Exception('Failed to all fridge');
    }
  }
}
