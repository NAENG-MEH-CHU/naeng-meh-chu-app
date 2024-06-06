import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/theme/naeng_meh_chu_theme_color.dart';

class FoodAddBox extends ConsumerWidget {
  const FoodAddBox({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16.0),
          decoration: ShapeDecoration(
            color: NaengMehChuThemeColor.white,
            shape: RoundedRectangleBorder(
              side:
                  const BorderSide(width: 1, color: NaengMehChuThemeColor.pink1),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: child),
    );
  }
}
