import 'package:naeng_meh_chu/data/data_source/sign_in_api_service.dart';

class SignInRepository {
  static Future<bool?> googleLogin(String accessToken) async {
    bool? isNew = await SignInApiService().googleSignIn(accessToken);
    return isNew;
  }

  static Future<bool?> naverLogin(String accessToken) async {
    bool? isNew = await SignInApiService().naverSignIn(accessToken);
    return isNew;
  }
}
