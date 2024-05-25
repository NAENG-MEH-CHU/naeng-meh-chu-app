import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

import '../model/member_profile.dart';

class SignUpApiService {
  Future<MemberProfile> initializeMember() async {
    try {
      var url = Uri.http(
        '${dotenv.env['APP_URL']}',
        '/api/initialize',
      );

      var response = await http.post(
        url,
        headers: {
          'Content-type': 'application/json',
          // HttpHeaders.authorizationHeader: "Bearer $accessToken"
        },
      );
      print(response.body);

      if (response.statusCode == 201) {}
      MemberProfile memberProfile = MemberProfile(isComplete: true);
      return memberProfile;
    } catch (error) {
      return MemberProfile(isComplete: false);
    }
  }
}
