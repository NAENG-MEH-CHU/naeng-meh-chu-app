import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_color.dart';

class NaengMehChuPictureSquare extends ConsumerWidget {
  const NaengMehChuPictureSquare({super.key, required this.size});

  final double size;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: size,
      height: size,
      decoration: ShapeDecoration(
        color: NaengMehChuThemeColor.pink1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
