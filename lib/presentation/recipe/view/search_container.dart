import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theme/naeng_meh_chu_theme_color.dart';
import '../../../core/theme/naeng_meh_chu_theme_text_style.dart';

class SearchContainer extends ConsumerWidget {
  const SearchContainer({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      decoration: ShapeDecoration(
        color: NaengMehChuThemeColor.pinkBackground,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: NaengMehChuThemeColor.gray2),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            message,
            style: NaengMehChuThemeTextStyle.gray1Regular12,
          ),
          SvgPicture.asset(
            'assets/icon/ic_search.svg',
            width: 16.0,
            height: 16.0,
          ),
        ],
      ),
    );
  }
}
