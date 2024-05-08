import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:naeng_meh_chu/domain/model/member_profile.dart';

class MemberProfileNotifier extends StateNotifier<MemberProfile> {
  MemberProfileNotifier() : super(MemberProfile(isComplete: false));

  bool _isMemberProfileComplete = false;

  bool get isMemberProfileComplete => _isMemberProfileComplete;

  void _checkIfComplete() {
    _isMemberProfileComplete = state.nickname != null &&
        state.nickname!.isNotEmpty &&
        state.gender != null &&
        state.age != null;
    state = state.copyWith(
        profileImage: state.profileImage,
        nickname: state.nickname,
        gender: state.gender,
        age: state.age,
        isComplete: _isMemberProfileComplete);
  }

  void updateProfileImage(XFile profileImage) {
    state = state.copyWith(
      profileImage: profileImage,
      nickname: state.nickname,
      gender: state.gender,
      age: state.age,
      isComplete: state.isComplete,
    );
    _checkIfComplete();
  }

  void updateNickname(String nickname) {
    state = state.copyWith(
      profileImage: state.profileImage,
      nickname: nickname,
      gender: state.gender,
      age: state.age,
      isComplete: state.isComplete,
    );
    _checkIfComplete();
  }

  void updateGender(String gender) {
    state = state.copyWith(
      profileImage: state.profileImage,
      nickname: state.nickname,
      gender: gender,
      age: state.age,
      isComplete: state.isComplete,
    );
    _checkIfComplete();
  }

  void updateAge(String age) {
    state = state.copyWith(
      profileImage: state.profileImage,
      nickname: state.nickname,
      gender: state.gender,
      age: age,
      isComplete: state.isComplete,
    );
    _checkIfComplete();
  }
}
