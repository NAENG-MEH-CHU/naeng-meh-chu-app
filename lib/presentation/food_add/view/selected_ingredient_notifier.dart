import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:naeng_meh_chu/data/model/all_fridge_model.dart';

class SelectedIngredientNotifier extends StateNotifier<Ingredient?> {
  SelectedIngredientNotifier() : super(null);

  void selectIngredient(Ingredient ingredient) {
    state = ingredient;
  }

  void clear() {
    state = null;
  }
}

class ExpirationDateNotifier extends StateNotifier<DateTime?> {
  ExpirationDateNotifier() : super(null);

  void selectDate(DateTime date) {
    state = date;
  }

  void clear() {
    state = null;
  }
}

final selectedIngredientProvider =
    StateNotifierProvider<SelectedIngredientNotifier, Ingredient?>(
  (ref) => SelectedIngredientNotifier(),
);

final expirationDateProvider =
    StateNotifierProvider<ExpirationDateNotifier, DateTime?>(
  (ref) => ExpirationDateNotifier(),
);
