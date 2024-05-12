import 'package:flutter/cupertino.dart';
import 'package:naeng_meh_chu/presentation/sign_up/view/sign_up_age.dart';
import 'package:naeng_meh_chu/presentation/sign_up/view/sign_up_gender.dart';
import 'package:naeng_meh_chu/presentation/sign_up/view/sign_up_nickname.dart';
import 'package:naeng_meh_chu/presentation/sign_up/view/sign_up_profile.dart';

class SignUpFirstProfile extends StatelessWidget {
  const SignUpFirstProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SignUpProfile(),
        SignUpNickname(),
        SignUpGender(),
        SignUpAge(),
      ],
    );
  }
}
