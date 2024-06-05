import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_data_response.freezed.dart';
part 'recipe_data_response.g.dart';

@freezed
class RecipeDataResponse with _$RecipeDataResponse {
  const factory RecipeDataResponse({
    required String id,
    required String name,
    required String thumbnail,
  }) = _RecipeDataResponse;

  factory RecipeDataResponse.fromJson(Map<String, dynamic> json) =>
      _$RecipeDataResponseFromJson(json);
}
