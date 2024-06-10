// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_fridge_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IngredientImpl _$$IngredientImplFromJson(Map<String, dynamic> json) =>
    _$IngredientImpl(
      ingredientId: (json['ingredientId'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$IngredientImplToJson(_$IngredientImpl instance) =>
    <String, dynamic>{
      'ingredientId': instance.ingredientId,
      'name': instance.name,
    };

_$AllFridgeModelImpl _$$AllFridgeModelImplFromJson(Map<String, dynamic> json) =>
    _$AllFridgeModelImpl(
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => Ingredient.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AllFridgeModelImplToJson(
        _$AllFridgeModelImpl instance) =>
    <String, dynamic>{
      'ingredients': instance.ingredients,
    };
