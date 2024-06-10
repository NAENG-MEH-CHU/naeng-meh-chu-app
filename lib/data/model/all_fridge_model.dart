import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_fridge_model.freezed.dart';
part 'all_fridge_model.g.dart';

@freezed
class Ingredient with _$Ingredient {
  const factory Ingredient({
    required int ingredientId,
    required String name,
  }) = _Ingredient;

  factory Ingredient.fromJson(Map<String, dynamic> json) =>
      _$IngredientFromJson(json);
}

@freezed
class AllFridgeModel with _$AllFridgeModel {
  const factory AllFridgeModel({
    required List<Ingredient> ingredients,
  }) = _AllFridgeModel;

  factory AllFridgeModel.fromJson(Map<String, dynamic> json) =>
      _$AllFridgeModelFromJson(json);
}
