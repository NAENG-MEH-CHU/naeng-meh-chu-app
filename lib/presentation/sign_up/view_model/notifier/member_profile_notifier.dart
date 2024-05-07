import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:naeng_meh_chu/domain/model/member_profile.dart';

class MemberProfileNotifier extends StateNotifier<MemberProfile> {
  MemberProfileNotifier() : super(MemberProfile());

  void updateProfileImage(XFile profileImage) {
    state = state.copyWith(profileImage: profileImage);
  }

  void updateNickname(String nickname) {
    state = state.copyWith(nickname: nickname);
  }

  void updateGender(String gender) {
    print(gender);
    state = state.copyWith(gender: gender);
  }

  void updateAge(int age) {
    state = state.copyWith(age: age);
  }
}
