import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_color.dart';

class NaengMehChuPicture extends ConsumerWidget {
  const NaengMehChuPicture({super.key, required this.height});

  final double height;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: double.infinity,
      height: height,
      decoration: ShapeDecoration(
        color: NaengMehChuThemeColor.pink1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
