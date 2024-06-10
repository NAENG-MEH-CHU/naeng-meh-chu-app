import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:naeng_meh_chu/core/button/pink_button.dart';
import 'package:naeng_meh_chu/core/dialog/primary_dialog.dart';
import 'package:naeng_meh_chu/data/model/all_fridge_model.dart';

import '../../presentation/food_add/view/food_add_box.dart';
import '../../presentation/food_add/view_model/all_fridge_notifier.dart';
import '../form/primary_text_form_field.dart';
import '../theme/naeng_meh_chu_theme_color.dart';
import '../theme/naeng_meh_chu_theme_text_style.dart';

class FoodSelectDialog extends ConsumerStatefulWidget {
  const FoodSelectDialog({super.key});

  @override
  _FoodSelectDialogState createState() => _FoodSelectDialogState();
}

class _FoodSelectDialogState extends ConsumerState<FoodSelectDialog> {
  final ScrollController _scrollController = ScrollController();
  int _currentPage = 0;
  final int _pageSize = 30;
  List<Ingredient> _ingredients = [];
  List<Ingredient> _filteredIngredients = [];
  String _searchQuery = '';
  Ingredient? _selectedIngredient;

  @override
  void initState() {
    super.initState();
    _fetchIngredients();
    _scrollController.addListener(() {
      if (_scrollController.position.atEdge) {
        if (_scrollController.position.pixels != 0) {
          _currentPage++;
          _fetchIngredients();
        }
      }
    });
  }

  Future<void> _fetchIngredients() async {
    final notifier = ref.read(allFridgeNotifierProvider.notifier);
    final newIngredients = await notifier.getPagedIngredients(_currentPage, _pageSize);
    setState(() {
      _ingredients.addAll(newIngredients);
      _filteredIngredients = _applySearchFilter(_ingredients, _searchQuery);
    });
  }

  List<Ingredient> _applySearchFilter(List<Ingredient> ingredients, String query) {
    if (query.isEmpty) {
      return ingredients;
    }
    return ingredients.where((ingredient) => ingredient.name.contains(query)).toList();
  }

  void _onSearchChanged(String query) {
    setState(() {
      _searchQuery = query;
      _filteredIngredients = _applySearchFilter(_ingredients, _searchQuery);
    });
  }

  void _onIngredientSelected(Ingredient ingredient) {
    setState(() {
      _selectedIngredient = ingredient;
    });
  }

  void _onRegister() {
    if (_selectedIngredient != null) {
      Navigator.pop(context, _selectedIngredient);
    }
  }

  @override
  Widget build(BuildContext context) {
    return PrimaryDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('재료 선택'),
          PinkButton(text: '등록', onPressed: _onRegister, enabled: _selectedIngredient != null)
        ],
      ),
      titleTextStyle: NaengMehChuThemeTextStyle.gray1Medium16,
      content: SingleChildScrollView(
        controller: _scrollController,
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
                  Expanded(
                    child: PrimaryTextFormField(
                      initialValue: '',
                      minLines: 1,
                      maxLines: 1,
                      hintText: "재료를 검색해 보세요",
                      onChanged: _onSearchChanged,
                    ),
                  ),
                ],
              ),
            ),
            FoodAddBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _filteredIngredients.map((ingredient) {
                  return GestureDetector(
                    onTap: () => _onIngredientSelected(ingredient),
                    child: Container(
                      color: _selectedIngredient == ingredient ? Colors.grey[300] : Colors.transparent,
                      child: Text(ingredient.name),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
