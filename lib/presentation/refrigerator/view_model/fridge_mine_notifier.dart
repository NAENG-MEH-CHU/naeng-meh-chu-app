import 'dart:convert';
import 'package:naeng_meh_chu/data/repository/fridge_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../data/model/fridge_mine_model.dart';

part 'fridge_mine_notifier.g.dart';

@riverpod
Future<List<MyIngredient>> fridgeMineNotifier(FridgeMineNotifierRef ref) async {
  final response = await FridgeRepository.fridgeMine();
  final json = jsonDecode(response) as Map<String, dynamic>;

  final List<dynamic> data = json['myIngredients'] as List<dynamic>? ?? [];

  return data.map((item) => MyIngredient.fromJson(item)).toList();
}
