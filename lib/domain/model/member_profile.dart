import 'package:image_picker/image_picker.dart';

class MemberProfile {
  final XFile? profileImage;
  final String? nickname;
  final String? gender;
  final String? age;

  MemberProfile({
    this.profileImage,
    this.nickname,
    this.gender,
    this.age,
  });

  MemberProfile copyWith({
    XFile? profileImage,
    String? nickname,
    String? gender,
    String? age,
  }) {
    return MemberProfile(
      profileImage: profileImage,
      nickname: nickname,
      gender: gender,
      age: age,
    );
  }
}
