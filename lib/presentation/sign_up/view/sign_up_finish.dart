import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpFinish extends ConsumerWidget {
  const SignUpFinish({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        SvgPicture.asset('assets/icon/ic_check.svg')
      ],
    );
  }
}
