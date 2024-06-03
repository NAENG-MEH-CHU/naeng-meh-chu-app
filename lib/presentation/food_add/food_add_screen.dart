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

class FoodAddScreen extends ConsumerStatefulWidget {
  const FoodAddScreen({super.key});

  @override
  ConsumerState createState() => _FoodAddScreenState();
}

class _FoodAddScreenState extends ConsumerState<FoodAddScreen> {
  @override
  Widget build(BuildContext context) {
    const List<String> list = <String>[
      '냉장 보관',
      '냉동 보관',
    ];
    String dropdownValue = '';

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
                        '보관 방법을 설정해주세요.',
                        style: NaengMehChuThemeTextStyle.blackBold16,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(
                                color: NaengMehChuThemeColor.pink1,
                                width: 1.0,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(
                                color: NaengMehChuThemeColor.pink1,
                                width: 1.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(
                                color: NaengMehChuThemeColor.pink1,
                                width: 1.0,
                              ),
                            ),
                          ),
                          hint: const Text('선택'),
                          items:
                              list.map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue!;
                            });
                          },
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
