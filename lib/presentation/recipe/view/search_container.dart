import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/form/primary_text_form_field.dart';
import '../../../core/theme/naeng_meh_chu_theme_color.dart';

class SearchContainer extends ConsumerWidget {
  const SearchContainer({super.key, required this.onChanged});

  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
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
          Expanded(
            child: PrimaryTextFormField(
              hintText: '레시피를 검색해 보세요',
              onChanged: onChanged,
            ),
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
