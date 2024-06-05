import 'dart:convert';

import 'package:naeng_meh_chu/data/repository/fridge_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/model/recipe_data_response.dart';

part 'all_recipe_notifier.g.dart';


@riverpod
Future<List<RecipeDataResponse>> recipeDataResponse(
    RecipeDataResponseRef ref) async {
  final response = await FridgeRepository.allRecipe();
  final json = jsonDecode(response) as Map<String, dynamic>;

  final dataList = json['data'] as List<dynamic>;

  final List<RecipeDataResponse> models = dataList
      .map(
          (data) => RecipeDataResponse.fromJson(data as Map<String, dynamic>))
      .toList();
  return models;
}
