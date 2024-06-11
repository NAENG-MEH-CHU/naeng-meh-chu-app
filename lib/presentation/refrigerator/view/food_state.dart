import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/theme/naeng_meh_chu_theme_color.dart';
import '../../../core/theme/naeng_meh_chu_theme_text_style.dart';

class FoodState extends ConsumerWidget {
  const FoodState(
      {super.key, required this.good, required this.normal, required this.bad});

  final good;
  final normal;
  final bad;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Container(
          width: 8.0,
          height: 8.0,
          decoration: const ShapeDecoration(
            shape: OvalBorder(),
            color: NaengMehChuThemeColor.good,
          ),
        ),
        const SizedBox(
          width: 4.0,
        ),
        Text(
          '안전 ${good} ',
          style: NaengMehChuThemeTextStyle.good11,
        ),
        const SizedBox(
          width: 4.0,
        ),
        Container(
          width: 8.0,
          height: 8.0,
          decoration: const ShapeDecoration(
            shape: OvalBorder(),
            color: NaengMehChuThemeColor.normal,
          ),
        ),
        const SizedBox(
          width: 4.0,
        ),
        Text(
          '보통 ${normal} ',
          style: NaengMehChuThemeTextStyle.normal11,
        ),
        const SizedBox(
          width: 4.0,
        ),
        Container(
          width: 8.0,
          height: 8.0,
          decoration: const ShapeDecoration(
            shape: OvalBorder(),
            color: NaengMehChuThemeColor.bad,
          ),
        ),
        const SizedBox(
          width: 4.0,
        ),
        Text(
          '위험 ${bad} ',
          style: NaengMehChuThemeTextStyle.bad11,
        ),
      ],
    );
  }
}
