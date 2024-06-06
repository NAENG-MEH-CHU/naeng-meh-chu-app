import 'package:image_picker/image_picker.dart';

class MemberProfile {
  final XFile? profileImage;
  final String? nickname;
  final String? gender;
  final String? age;
  final String? usingReasons;
  final bool isComplete;

  MemberProfile(
      {this.profileImage,
      this.nickname,
      this.gender,
      this.age,
      this.usingReasons,
      required this.isComplete});

  MemberProfile copyWith({
    XFile? profileImage,
    String? nickname,
    String? gender,
    String? age,
    String? usingReasons,
    required bool isComplete,
  }) {
    return MemberProfile(
      profileImage: profileImage,
      nickname: nickname,
      gender: gender,
      age: age,
      usingReasons: usingReasons,
      isComplete: isComplete,
    );
  }
}
