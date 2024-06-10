import 'dart:convert';
import 'package:naeng_meh_chu/data/model/all_fridge_model.dart';
import 'package:naeng_meh_chu/data/repository/fridge_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'all_fridge_notifier.g.dart';

@riverpod
class AllFridgeNotifier extends _$AllFridgeNotifier {
  @override
  Future<AllFridgeModel> build() async {
    final response = await FridgeRepository.allFridge();
    final json = jsonDecode(response) as Map<String, dynamic>;
    return AllFridgeModel.fromJson(json);
  }

  Future<List<Ingredient>> getPagedIngredients(int page, int pageSize) async {
    final allFridge = await build();
    final start = page * pageSize;
    final end = start + pageSize;
    return allFridge.ingredients.sublist(start, end > allFridge.ingredients.length ? allFridge.ingredients.length : end);
  }
}
