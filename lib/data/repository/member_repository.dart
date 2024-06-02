import 'package:naeng_meh_chu/data/data_source/sign_up_api_service.dart';

import '../data_source/sign_in_api_service.dart';

class MemberRepository {
  static Future<bool?> googleLogin(String accessToken) async {
    bool? isNew = await SignInApiService().googleSignIn(accessToken);
    return isNew;
  }

  static Future<bool?> naverLogin(String accessToken) async {
    bool? isNew = await SignInApiService().naverSignIn(accessToken);
    return isNew;
  }

  static Future<String> initializeMember(String nickname, String gender,
      String age, List<String> usingReasons) async {
    String? response = await SignUpApiService()
        .initializeMember(nickname, gender, age, usingReasons);
    return response;
  }
}
