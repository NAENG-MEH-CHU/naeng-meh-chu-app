import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theme/naeng_meh_chu_theme_text_style.dart';

class SignUpGender extends ConsumerStatefulWidget {
  const SignUpGender({super.key});

  @override
  ConsumerState createState() => _SignUpGenderState();
}

class _SignUpGenderState extends ConsumerState<SignUpGender> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Row(
            children: [
              const Text(
                '성별',
                style: NaengMehChuThemeTextStyle.blackMedium12,
              ),
              const SizedBox(
                width: 6,
              ),
              SvgPicture.asset('assets/icon/ic_check.svg'),
            ],
          ),
        ),
        const Row(
          children: [
            Text(
              '남자',
              style: NaengMehChuThemeTextStyle.blackMedium12,
            ),
            Text(
              '여자',
              style: NaengMehChuThemeTextStyle.blackMedium12,
            ),
          ],
        ),
      ],
    );
  }
}
