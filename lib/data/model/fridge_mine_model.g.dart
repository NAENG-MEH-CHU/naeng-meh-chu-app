// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fridge_mine_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FridgeMineModelImpl _$$FridgeMineModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FridgeMineModelImpl(
      myIngredients: (json['myIngredients'] as List<dynamic>)
          .map((e) => MyIngredient.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FridgeMineModelImplToJson(
        _$FridgeMineModelImpl instance) =>
    <String, dynamic>{
      'myIngredients': instance.myIngredients,
    };

_$MyIngredientImpl _$$MyIngredientImplFromJson(Map<String, dynamic> json) =>
    _$MyIngredientImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      ingredientId: (json['ingredientId'] as num).toInt(),
      dueDay: (json['dueDay'] as num).toInt(),
    );

Map<String, dynamic> _$$MyIngredientImplToJson(_$MyIngredientImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'ingredientId': instance.ingredientId,
      'dueDay': instance.dueDay,
    };
