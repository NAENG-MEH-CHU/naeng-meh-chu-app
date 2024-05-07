import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:naeng_meh_chu/domain/model/member_profile.dart';

class MemberProfileNotifier extends StateNotifier<MemberProfile> {
  MemberProfileNotifier() : super(MemberProfile());

  void updateProfileImage(XFile profileImage) {
    state = state.copyWith(
      profileImage: profileImage,
      nickname: state.nickname,
      gender: state.gender,
      age: state.age,
    );
  }

  void updateNickname(String nickname) {
    state = state.copyWith(
      profileImage: state.profileImage,
      nickname: nickname,
      gender: state.gender,
      age: state.age,
    );
  }

  void updateGender(String gender) {
    state = state.copyWith(
      profileImage: state.profileImage,
      nickname: state.nickname,
      gender: gender,
      age: state.age,
    );
  }

  void updateAge(String age) {
    state = state.copyWith(
      profileImage: state.profileImage,
      nickname: state.nickname,
      gender: state.gender,
      age: age,
    );
  }
}
