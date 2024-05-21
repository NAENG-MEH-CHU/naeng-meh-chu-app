import 'package:naeng_meh_chu/data/data_source/sign_up_api_service.dart';

import '../model/member_profile.dart';

class SignUpRepository {
  static Future<MemberProfile> initializeMember() async {
    MemberProfile memberProfile = await SignUpApiService().initializeMember();
    return memberProfile;
  }
}
