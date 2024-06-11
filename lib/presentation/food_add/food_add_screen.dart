import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:naeng_meh_chu/core/app_bar/left_back_button_app_bar.dart';
import 'package:naeng_meh_chu/core/button/pink_button.dart';
import 'package:naeng_meh_chu/core/naeng_meh_chu_calender.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_color.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_text_style.dart';
import 'package:naeng_meh_chu/data/data_source/fridge_api_service.dart';
import 'package:naeng_meh_chu/data/model/all_fridge_model.dart';
import 'package:naeng_meh_chu/presentation/food_add/view/food_add_box.dart';
import 'package:naeng_meh_chu/presentation/food_add/view/selected_ingredient_notifier.dart';

import '../../core/dialog/food_select_dialog.dart';
import '../refrigerator/view_model/fridge_mine_notifier.dart';

class FoodAddScreen extends ConsumerWidget {
  const FoodAddScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIngredient = ref.watch(selectedIngredientProvider);
    final expirationDate = ref.watch(expirationDateProvider);

    Future<void> _showFoodSelectDialog() async {
      final result = await showDialog<Ingredient>(
        context: context,
        builder: (context) => const FoodSelectDialog(),
      );

      if (result != null) {
        ref.read(selectedIngredientProvider.notifier).selectIngredient(result);
      }
    }

    void _onDateSelected(DateTime selectedDate) {
      ref.read(expirationDateProvider.notifier).selectDate(selectedDate);
    }

    Future<void> _saveToFridge() async {
      if (selectedIngredient != null && expirationDate != null) {
        try {
          await FridgeApiService().fridgeAdd(
            selectedIngredient.ingredientId,
            expirationDate.year,
            expirationDate.month,
            expirationDate.day,
          );

          ref.invalidate(fridgeMineNotifierProvider);
          ref.read((fridgeMineNotifierProvider));
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('저장 성공'),
            duration: Duration(seconds: 5),
          ));
        } catch (e) {
          print('저장 실패: $e');
        }
      } else {
        print('재료와 유통 기한을 선택해주세요.');
      }
    }

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
                        onTap: _showFoodSelectDialog,
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
                              Text(
                                selectedIngredient?.name ?? '재료를 검색해 보세요',
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
                      FoodAddBox(
                        child: Text(
                          expirationDate != null
                              ? DateFormat('yy/MM/dd').format(expirationDate)
                              : 'yy/mm/dd',
                          style: NaengMehChuThemeTextStyle.gray2Medium14,
                        ),
                      ),
                      NaengMehChuCalender(onDateSelected: _onDateSelected),
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
              child: PinkButton(
                text: '냉장고에 저장',
                onPressed: _saveToFridge,
                enabled: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
