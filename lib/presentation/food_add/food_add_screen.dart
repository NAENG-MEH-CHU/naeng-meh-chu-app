import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:naeng_meh_chu/core/action_sheet/show_action_sheet.dart';
import 'package:naeng_meh_chu/core/app_bar/left_back_button_app_bar.dart';
import 'package:naeng_meh_chu/core/button/pink_button.dart';
import 'package:naeng_meh_chu/core/naeng_meh_chu_calender.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_color.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_text_style.dart';
import 'package:naeng_meh_chu/presentation/food_add/view/food_add_box.dart';

class FoodAddScreen extends ConsumerWidget {
  const FoodAddScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: LeftBackButtonAppBar(
        onPress: () {
          Navigator.pop(context);
        },
        title: '재료 추가',
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              color: NaengMehChuThemeColor.pinkBackground,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '재료를 선택해주세요.',
                        style: NaengMehChuThemeTextStyle.blackBold16,
                      ),
                      GestureDetector(
                        onTap: () {
                          showFoodSelectActionSheet(context);
                        },
                        child: FoodAddBox(
                          child: Row(
                            children: [
                              GestureDetector(
                                child: SizedBox(
                                  width: 16.0,
                                  height: 16.0,
                                  child: SvgPicture.asset(
                                    'assets/icon/ic_search.svg',
                                    colorFilter: const ColorFilter.mode(
                                        NaengMehChuThemeColor.gray2,
                                        BlendMode.srcIn),
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
                      ),
                      const Text(
                        '유통 기한을 설정해주세요.',
                        style: NaengMehChuThemeTextStyle.blackBold16,
                      ),
                      const Text(
                        '(건너뛰어도 괜찮아요)',
                        style: NaengMehChuThemeTextStyle.blackMedium12,
                      ),
                      const FoodAddBox(
                        child: Text(
                          'yy/mm/dd',
                          style: NaengMehChuThemeTextStyle.gray2Medium14,
                        ),
                      ),
                      NaengMehChuCalender(),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: double.infinity,
              color: NaengMehChuThemeColor.pinkBackground,
              child:
                  PinkButton(text: '냉장고에 저장', onPressed: () {}, enabled: true),
            ),
          ),
        ],
      ),
    );
  }
}
