import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class NaengMehChuPictureCircle extends ConsumerWidget {
  const NaengMehChuPictureCircle({super.key, required this.size, this.asset});

  final double size;
  final String? asset;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: size,
      height: size,
      decoration: const ShapeDecoration(
        shape: OvalBorder(),
      ),
      child: asset == null
          ? null
          : SvgPicture.asset(
              "$asset",
              fit: BoxFit.cover,
            ),
    );
  }
}
