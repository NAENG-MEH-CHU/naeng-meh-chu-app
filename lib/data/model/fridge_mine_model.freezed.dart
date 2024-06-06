// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fridge_mine_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FridgeMineModel _$FridgeMineModelFromJson(Map<String, dynamic> json) {
  return _FridgeMineModel.fromJson(json);
}

/// @nodoc
mixin _$FridgeMineModel {
  List<MyIngredient> get myIngredients => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FridgeMineModelCopyWith<FridgeMineModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FridgeMineModelCopyWith<$Res> {
  factory $FridgeMineModelCopyWith(
          FridgeMineModel value, $Res Function(FridgeMineModel) then) =
      _$FridgeMineModelCopyWithImpl<$Res, FridgeMineModel>;
  @useResult
  $Res call({List<MyIngredient> myIngredients});
}

/// @nodoc
class _$FridgeMineModelCopyWithImpl<$Res, $Val extends FridgeMineModel>
    implements $FridgeMineModelCopyWith<$Res> {
  _$FridgeMineModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myIngredients = null,
  }) {
    return _then(_value.copyWith(
      myIngredients: null == myIngredients
          ? _value.myIngredients
          : myIngredients // ignore: cast_nullable_to_non_nullable
              as List<MyIngredient>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FridgeMineModelImplCopyWith<$Res>
    implements $FridgeMineModelCopyWith<$Res> {
  factory _$$FridgeMineModelImplCopyWith(_$FridgeMineModelImpl value,
          $Res Function(_$FridgeMineModelImpl) then) =
      __$$FridgeMineModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MyIngredient> myIngredients});
}

/// @nodoc
class __$$FridgeMineModelImplCopyWithImpl<$Res>
    extends _$FridgeMineModelCopyWithImpl<$Res, _$FridgeMineModelImpl>
    implements _$$FridgeMineModelImplCopyWith<$Res> {
  __$$FridgeMineModelImplCopyWithImpl(
      _$FridgeMineModelImpl _value, $Res Function(_$FridgeMineModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myIngredients = null,
  }) {
    return _then(_$FridgeMineModelImpl(
      myIngredients: null == myIngredients
          ? _value._myIngredients
          : myIngredients // ignore: cast_nullable_to_non_nullable
              as List<MyIngredient>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FridgeMineModelImpl implements _FridgeMineModel {
  const _$FridgeMineModelImpl({required final List<MyIngredient> myIngredients})
      : _myIngredients = myIngredients;

  factory _$FridgeMineModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FridgeMineModelImplFromJson(json);

  final List<MyIngredient> _myIngredients;
  @override
  List<MyIngredient> get myIngredients {
    if (_myIngredients is EqualUnmodifiableListView) return _myIngredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_myIngredients);
  }

  @override
  String toString() {
    return 'FridgeMineModel(myIngredients: $myIngredients)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FridgeMineModelImpl &&
            const DeepCollectionEquality()
                .equals(other._myIngredients, _myIngredients));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_myIngredients));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FridgeMineModelImplCopyWith<_$FridgeMineModelImpl> get copyWith =>
      __$$FridgeMineModelImplCopyWithImpl<_$FridgeMineModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FridgeMineModelImplToJson(
      this,
    );
  }
}

abstract class _FridgeMineModel implements FridgeMineModel {
  const factory _FridgeMineModel(
          {required final List<MyIngredient> myIngredients}) =
      _$FridgeMineModelImpl;

  factory _FridgeMineModel.fromJson(Map<String, dynamic> json) =
      _$FridgeMineModelImpl.fromJson;

  @override
  List<MyIngredient> get myIngredients;
  @override
  @JsonKey(ignore: true)
  _$$FridgeMineModelImplCopyWith<_$FridgeMineModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MyIngredient _$MyIngredientFromJson(Map<String, dynamic> json) {
  return _MyIngredient.fromJson(json);
}

/// @nodoc
mixin _$MyIngredient {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get ingredientId => throw _privateConstructorUsedError;
  int get dueDay => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyIngredientCopyWith<MyIngredient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyIngredientCopyWith<$Res> {
  factory $MyIngredientCopyWith(
          MyIngredient value, $Res Function(MyIngredient) then) =
      _$MyIngredientCopyWithImpl<$Res, MyIngredient>;
  @useResult
  $Res call({String id, String name, int ingredientId, int dueDay});
}

/// @nodoc
class _$MyIngredientCopyWithImpl<$Res, $Val extends MyIngredient>
    implements $MyIngredientCopyWith<$Res> {
  _$MyIngredientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? ingredientId = null,
    Object? dueDay = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ingredientId: null == ingredientId
          ? _value.ingredientId
          : ingredientId // ignore: cast_nullable_to_non_nullable
              as int,
      dueDay: null == dueDay
          ? _value.dueDay
          : dueDay // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyIngredientImplCopyWith<$Res>
    implements $MyIngredientCopyWith<$Res> {
  factory _$$MyIngredientImplCopyWith(
          _$MyIngredientImpl value, $Res Function(_$MyIngredientImpl) then) =
      __$$MyIngredientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, int ingredientId, int dueDay});
}

/// @nodoc
class __$$MyIngredientImplCopyWithImpl<$Res>
    extends _$MyIngredientCopyWithImpl<$Res, _$MyIngredientImpl>
    implements _$$MyIngredientImplCopyWith<$Res> {
  __$$MyIngredientImplCopyWithImpl(
      _$MyIngredientImpl _value, $Res Function(_$MyIngredientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? ingredientId = null,
    Object? dueDay = null,
  }) {
    return _then(_$MyIngredientImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ingredientId: null == ingredientId
          ? _value.ingredientId
          : ingredientId // ignore: cast_nullable_to_non_nullable
              as int,
      dueDay: null == dueDay
          ? _value.dueDay
          : dueDay // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyIngredientImpl implements _MyIngredient {
  const _$MyIngredientImpl(
      {required this.id,
      required this.name,
      required this.ingredientId,
      required this.dueDay});

  factory _$MyIngredientImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyIngredientImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final int ingredientId;
  @override
  final int dueDay;

  @override
  String toString() {
    return 'MyIngredient(id: $id, name: $name, ingredientId: $ingredientId, dueDay: $dueDay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyIngredientImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.ingredientId, ingredientId) ||
                other.ingredientId == ingredientId) &&
            (identical(other.dueDay, dueDay) || other.dueDay == dueDay));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, ingredientId, dueDay);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyIngredientImplCopyWith<_$MyIngredientImpl> get copyWith =>
      __$$MyIngredientImplCopyWithImpl<_$MyIngredientImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyIngredientImplToJson(
      this,
    );
  }
}

abstract class _MyIngredient implements MyIngredient {
  const factory _MyIngredient(
      {required final String id,
      required final String name,
      required final int ingredientId,
      required final int dueDay}) = _$MyIngredientImpl;

  factory _MyIngredient.fromJson(Map<String, dynamic> json) =
      _$MyIngredientImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  int get ingredientId;
  @override
  int get dueDay;
  @override
  @JsonKey(ignore: true)
  _$$MyIngredientImplCopyWith<_$MyIngredientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
