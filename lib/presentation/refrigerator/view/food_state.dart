import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/theme/naeng_meh_chu_theme_color.dart';
import '../../../core/theme/naeng_meh_chu_theme_text_style.dart';

class FoodState extends ConsumerWidget {
  const FoodState({super.key});

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
        const Text(
          '안전',
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
        const Text(
          '보통',
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
        const Text(
          '위험',
          style: NaengMehChuThemeTextStyle.bad11,
        ),
      ],
    );
  }
}
