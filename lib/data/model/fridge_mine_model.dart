import 'package:freezed_annotation/freezed_annotation.dart';

part 'fridge_mine_model.freezed.dart';
part 'fridge_mine_model.g.dart';

@freezed
class FridgeMineModel with _$FridgeMineModel {
  const factory FridgeMineModel({
    required List<MyIngredient> myIngredients,
  }) = _FridgeMineModel;

  factory FridgeMineModel.fromJson(Map<String, dynamic> json) =>
      _$FridgeMineModelFromJson(json);
}

@freezed
class MyIngredient with _$MyIngredient {
  const factory MyIngredient({
    required String id,
    required String name,
    required int ingredientId,
    required int dueDay,
  }) = _MyIngredient;

  factory MyIngredient.fromJson(Map<String, dynamic> json) =>
      _$MyIngredientFromJson(json);
}
