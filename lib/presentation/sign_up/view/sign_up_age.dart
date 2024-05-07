import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theme/naeng_meh_chu_theme_text_style.dart';

class SignUpAge extends ConsumerStatefulWidget {
  const SignUpAge({super.key});

  @override
  ConsumerState createState() => _SignUpAgeState();
}

const List<String> list = <String>['10대', '20대', '30대', '40대', '50대', '60대', '70대 이상'];

class _SignUpAgeState extends ConsumerState<SignUpAge> {
  String dropdownValue = list.first;

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
                '나이',
                style: NaengMehChuThemeTextStyle.blackMedium12,
              ),
              const SizedBox(
                width: 6,
              ),
              SvgPicture.asset('assets/icon/ic_check.svg'),
            ],
          ),
        ),
        DropdownMenu<String>(
            onSelected: (String? value) {
              setState(() {
                dropdownValue = value!;
              });
            },
            hintText: '선택',
            dropdownMenuEntries:
                list.map<DropdownMenuEntry<String>>((String value) {
              return DropdownMenuEntry<String>(value: value, label: value);
            }).toList()),
      ],
    );
  }
}