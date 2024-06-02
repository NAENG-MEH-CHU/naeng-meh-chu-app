import 'dart:convert';
import 'dart:io';

import 'api_client.dart';

class SignUpApiService {
  Future<String> initializeMember(String nickname, String gender, String age,
      List<String> usingReasons) async {
    const url = '/api/auth/initialize';

    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    final body = jsonEncode({
      'nickname': nickname,
      'gender': gender,
      'age': age,
      'usingReasons': usingReasons
    });
    ApiClient apiClient = ApiClient();

    final response = await apiClient.post(
      url,
      headers: headers,
      body: body,
    );

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else {
      throw Exception('Fail');
    }
  }
}
