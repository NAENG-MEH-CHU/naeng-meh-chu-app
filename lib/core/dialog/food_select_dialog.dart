import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:naeng_meh_chu/core/dialog/primary_dialog.dart';
import 'package:naeng_meh_chu/presentation/food_add/view/food_add_box.dart';

import '../theme/naeng_meh_chu_theme_color.dart';
import '../theme/naeng_meh_chu_theme_text_style.dart';

class FoodSelectDialog extends ConsumerWidget {
  const FoodSelectDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PrimaryDialog(
      title: const Text('재료 선택'),
      titleTextStyle: NaengMehChuThemeTextStyle.gray1Medium16,
      content: SingleChildScrollView(
        child: Column(
          children: [
            FoodAddBox(
              child: Row(
                children: [
                  GestureDetector(
                    child: SizedBox(
                      width: 16.0,
                      height: 16.0,
                      child: SvgPicture.asset(
                        'assets/icon/ic_search.svg',
                        colorFilter: const ColorFilter.mode(
                            NaengMehChuThemeColor.gray2, BlendMode.srcIn),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  const Text(
                    '재료를 검색해 보세요',
                    style: NaengMehChuThemeTextStyle.gray2Medium14,
                  ),
                ],
              ),
            ),
            const FoodAddBox(
                child: Column(
              children: [
                FoodAddBox(child: Text('달걀')),
                FoodAddBox(child: Text('달걀')),
                FoodAddBox(child: Text('달걀')),
                FoodAddBox(child: Text('달걀')),
                FoodAddBox(child: Text('달걀')),
                FoodAddBox(child: Text('달걀')),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
