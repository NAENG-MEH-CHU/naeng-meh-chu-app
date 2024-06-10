// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_fridge_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Ingredient _$IngredientFromJson(Map<String, dynamic> json) {
  return _Ingredient.fromJson(json);
}

/// @nodoc
mixin _$Ingredient {
  int get ingredientId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IngredientCopyWith<Ingredient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientCopyWith<$Res> {
  factory $IngredientCopyWith(
          Ingredient value, $Res Function(Ingredient) then) =
      _$IngredientCopyWithImpl<$Res, Ingredient>;
  @useResult
  $Res call({int ingredientId, String name});
}

/// @nodoc
class _$IngredientCopyWithImpl<$Res, $Val extends Ingredient>
    implements $IngredientCopyWith<$Res> {
  _$IngredientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredientId = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      ingredientId: null == ingredientId
          ? _value.ingredientId
          : ingredientId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IngredientImplCopyWith<$Res>
    implements $IngredientCopyWith<$Res> {
  factory _$$IngredientImplCopyWith(
          _$IngredientImpl value, $Res Function(_$IngredientImpl) then) =
      __$$IngredientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int ingredientId, String name});
}

/// @nodoc
class __$$IngredientImplCopyWithImpl<$Res>
    extends _$IngredientCopyWithImpl<$Res, _$IngredientImpl>
    implements _$$IngredientImplCopyWith<$Res> {
  __$$IngredientImplCopyWithImpl(
      _$IngredientImpl _value, $Res Function(_$IngredientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredientId = null,
    Object? name = null,
  }) {
    return _then(_$IngredientImpl(
      ingredientId: null == ingredientId
          ? _value.ingredientId
          : ingredientId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IngredientImpl implements _Ingredient {
  const _$IngredientImpl({required this.ingredientId, required this.name});

  factory _$IngredientImpl.fromJson(Map<String, dynamic> json) =>
      _$$IngredientImplFromJson(json);

  @override
  final int ingredientId;
  @override
  final String name;

  @override
  String toString() {
    return 'Ingredient(ingredientId: $ingredientId, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IngredientImpl &&
            (identical(other.ingredientId, ingredientId) ||
                other.ingredientId == ingredientId) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ingredientId, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IngredientImplCopyWith<_$IngredientImpl> get copyWith =>
      __$$IngredientImplCopyWithImpl<_$IngredientImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IngredientImplToJson(
      this,
    );
  }
}

abstract class _Ingredient implements Ingredient {
  const factory _Ingredient(
      {required final int ingredientId,
      required final String name}) = _$IngredientImpl;

  factory _Ingredient.fromJson(Map<String, dynamic> json) =
      _$IngredientImpl.fromJson;

  @override
  int get ingredientId;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$IngredientImplCopyWith<_$IngredientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AllFridgeModel _$AllFridgeModelFromJson(Map<String, dynamic> json) {
  return _AllFridgeModel.fromJson(json);
}

/// @nodoc
mixin _$AllFridgeModel {
  List<Ingredient> get ingredients => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllFridgeModelCopyWith<AllFridgeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllFridgeModelCopyWith<$Res> {
  factory $AllFridgeModelCopyWith(
          AllFridgeModel value, $Res Function(AllFridgeModel) then) =
      _$AllFridgeModelCopyWithImpl<$Res, AllFridgeModel>;
  @useResult
  $Res call({List<Ingredient> ingredients});
}

/// @nodoc
class _$AllFridgeModelCopyWithImpl<$Res, $Val extends AllFridgeModel>
    implements $AllFridgeModelCopyWith<$Res> {
  _$AllFridgeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredients = null,
  }) {
    return _then(_value.copyWith(
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllFridgeModelImplCopyWith<$Res>
    implements $AllFridgeModelCopyWith<$Res> {
  factory _$$AllFridgeModelImplCopyWith(_$AllFridgeModelImpl value,
          $Res Function(_$AllFridgeModelImpl) then) =
      __$$AllFridgeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Ingredient> ingredients});
}

/// @nodoc
class __$$AllFridgeModelImplCopyWithImpl<$Res>
    extends _$AllFridgeModelCopyWithImpl<$Res, _$AllFridgeModelImpl>
    implements _$$AllFridgeModelImplCopyWith<$Res> {
  __$$AllFridgeModelImplCopyWithImpl(
      _$AllFridgeModelImpl _value, $Res Function(_$AllFridgeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredients = null,
  }) {
    return _then(_$AllFridgeModelImpl(
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllFridgeModelImpl implements _AllFridgeModel {
  const _$AllFridgeModelImpl({required final List<Ingredient> ingredients})
      : _ingredients = ingredients;

  factory _$AllFridgeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllFridgeModelImplFromJson(json);

  final List<Ingredient> _ingredients;
  @override
  List<Ingredient> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  String toString() {
    return 'AllFridgeModel(ingredients: $ingredients)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllFridgeModelImpl &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_ingredients));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllFridgeModelImplCopyWith<_$AllFridgeModelImpl> get copyWith =>
      __$$AllFridgeModelImplCopyWithImpl<_$AllFridgeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllFridgeModelImplToJson(
      this,
    );
  }
}

abstract class _AllFridgeModel implements AllFridgeModel {
  const factory _AllFridgeModel({required final List<Ingredient> ingredients}) =
      _$AllFridgeModelImpl;

  factory _AllFridgeModel.fromJson(Map<String, dynamic> json) =
      _$AllFridgeModelImpl.fromJson;

  @override
  List<Ingredient> get ingredients;
  @override
  @JsonKey(ignore: true)
  _$$AllFridgeModelImplCopyWith<_$AllFridgeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
