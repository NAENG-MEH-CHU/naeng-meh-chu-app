import 'dart:convert';

import 'package:naeng_meh_chu/data/repository/recipe_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/model/recipe_data_response.dart';

part 'recipe_get_notifier.g.dart';

@riverpod
Future<List<RecipeDataResponse>> recipeGetNotifier(
    RecipeGetNotifierRef ref) async {
  final response = await RecipeRepository.recipe();

  final json = jsonDecode(response) as Map<String, dynamic>;

  final List<dynamic> data = json['recipeDataResponses'] as List<dynamic>? ?? [];

  return data.map((item) => RecipeDataResponse.fromJson(item)).toList();
}
