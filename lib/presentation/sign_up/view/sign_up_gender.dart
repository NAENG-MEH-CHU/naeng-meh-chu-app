import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_color.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_text_style.dart';

class SignUpGender extends ConsumerStatefulWidget {
  const SignUpGender({super.key});

  @override
  ConsumerState createState() => _SignUpGenderState();
}

class _SignUpGenderState extends ConsumerState<SignUpGender> {
  int radioValue = 0;

  void handleRadioValueChanged(int? value) {
    setState(() {
      radioValue = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Radio(
              value: 0,
              groupValue: radioValue,
              onChanged: handleRadioValueChanged,
              activeColor: NaengMehChuThemeColor.pink,
              fillColor: MaterialStateColor.resolveWith(
                  (states) => NaengMehChuThemeColor.pink),
            ),
            const Text(
              '남자',
              style: NaengMehChuThemeTextStyle.blackMedium12,
            ),
            Radio(
              value: 1,
              groupValue: radioValue,
              onChanged: handleRadioValueChanged,
              activeColor: NaengMehChuThemeColor.pink,
              fillColor: MaterialStateColor.resolveWith(
                  (states) => NaengMehChuThemeColor.pink),
            ),
            const Text(
              '여자',
              style: NaengMehChuThemeTextStyle.blackMedium12,
            ),
          ],
        ),
      ],
    );
  }
}
