import 'dart:convert' as convert;
import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

const storage = FlutterSecureStorage();

class SignInApiService {
  Future<bool?> googleSignIn(String accessToken) async {
    try {
      var url = Uri.http(
        '${dotenv.env['APP_URL']}',
        '/api/auth/login/google',
      );

      var response = await http.post(
        url,
        headers: {
          'Content-type': 'application/json',
          HttpHeaders.authorizationHeader: accessToken
        },
      );

      if (response.statusCode == 201) {
        var jsonResponse =
            convert.jsonDecode(response.body) as Map<String, dynamic>;
        return jsonResponse['new'];
      }
    } catch (error) {
      return null;
    }
    return null;
  }

  Future<bool?> naverSignIn(String accessToken) async {
    try {
      var url = Uri.http(
        '${dotenv.env['APP_URL']}',
        '/api/auth/login/naver',
      );

      var response = await http.post(
        url,
        headers: {
          'Content-type': 'application/json',
          HttpHeaders.authorizationHeader: "Bearer $accessToken"
        },
      );

      if (response.statusCode == 201) {
        var jsonResponse =
            convert.jsonDecode(response.body) as Map<String, dynamic>;
        await storage.write(
            key: "accessToken", value: jsonResponse['accessToken']);
        await storage.write(
            key: "refreshToken", value: jsonResponse['refreshToken']);

        return jsonResponse['new'];
      }
    } catch (error) {
      return null;
    }
    return null;
  }
}
