import 'package:image_picker/image_picker.dart';

class MemberProfile {
  final XFile? profileImage;
  final String? nickname;
  final String? gender;
  final String? age;
  final bool isComplete;

  MemberProfile(
      {this.profileImage,
      this.nickname,
      this.gender,
      this.age,
      required this.isComplete});

  MemberProfile copyWith({
    XFile? profileImage,
    String? nickname,
    String? gender,
    String? age,
    required bool isComplete,
  }) {
    return MemberProfile(
      profileImage: profileImage,
      nickname: nickname,
      gender: gender,
      age: age,
      isComplete: isComplete,
    );
  }
}
