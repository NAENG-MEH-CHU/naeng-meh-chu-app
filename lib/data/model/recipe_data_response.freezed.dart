// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecipeDataResponse _$RecipeDataResponseFromJson(Map<String, dynamic> json) {
  return _RecipeDataResponse.fromJson(json);
}

/// @nodoc
mixin _$RecipeDataResponse {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeDataResponseCopyWith<RecipeDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeDataResponseCopyWith<$Res> {
  factory $RecipeDataResponseCopyWith(
          RecipeDataResponse value, $Res Function(RecipeDataResponse) then) =
      _$RecipeDataResponseCopyWithImpl<$Res, RecipeDataResponse>;
  @useResult
  $Res call({String id, String name, String thumbnail});
}

/// @nodoc
class _$RecipeDataResponseCopyWithImpl<$Res, $Val extends RecipeDataResponse>
    implements $RecipeDataResponseCopyWith<$Res> {
  _$RecipeDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? thumbnail = null,
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
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipeDataResponseImplCopyWith<$Res>
    implements $RecipeDataResponseCopyWith<$Res> {
  factory _$$RecipeDataResponseImplCopyWith(_$RecipeDataResponseImpl value,
          $Res Function(_$RecipeDataResponseImpl) then) =
      __$$RecipeDataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String thumbnail});
}

/// @nodoc
class __$$RecipeDataResponseImplCopyWithImpl<$Res>
    extends _$RecipeDataResponseCopyWithImpl<$Res, _$RecipeDataResponseImpl>
    implements _$$RecipeDataResponseImplCopyWith<$Res> {
  __$$RecipeDataResponseImplCopyWithImpl(_$RecipeDataResponseImpl _value,
      $Res Function(_$RecipeDataResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? thumbnail = null,
  }) {
    return _then(_$RecipeDataResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecipeDataResponseImpl
    with DiagnosticableTreeMixin
    implements _RecipeDataResponse {
  const _$RecipeDataResponseImpl(
      {required this.id, required this.name, required this.thumbnail});

  factory _$RecipeDataResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipeDataResponseImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String thumbnail;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeDataResponse(id: $id, name: $name, thumbnail: $thumbnail)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecipeDataResponse'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('thumbnail', thumbnail));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeDataResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, thumbnail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeDataResponseImplCopyWith<_$RecipeDataResponseImpl> get copyWith =>
      __$$RecipeDataResponseImplCopyWithImpl<_$RecipeDataResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipeDataResponseImplToJson(
      this,
    );
  }
}

abstract class _RecipeDataResponse implements RecipeDataResponse {
  const factory _RecipeDataResponse(
      {required final String id,
      required final String name,
      required final String thumbnail}) = _$RecipeDataResponseImpl;

  factory _RecipeDataResponse.fromJson(Map<String, dynamic> json) =
      _$RecipeDataResponseImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$RecipeDataResponseImplCopyWith<_$RecipeDataResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
