import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_text_style.dart';
import 'package:naeng_meh_chu/presentation/cold/cold_screen.dart';

import '../../../core/theme/naeng_meh_chu_theme_color.dart';

class RefrigeratorFood extends ConsumerWidget {
  const RefrigeratorFood({
    super.key,
    required this.stateColor,
    required this.name,
    required this.dateTime,
  });

  final Color stateColor;
  final String name;
  final String dateTime;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              padding: const EdgeInsets.all(32.0),
              decoration: ShapeDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/image/img_logo.png'),
                ),
                color: NaengMehChuThemeColor.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 4.0,
        ),
        Text(
          name,
          style: NaengMehChuThemeTextStyle.blackMedium10,
        ),
        Text(
          dateTime,
          style: NaengMehChuThemeTextStyle.gray2Medium10,
        ),
      ],
    );
  }
}
