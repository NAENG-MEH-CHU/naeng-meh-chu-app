import 'package:flutter/material.dart';
import 'package:naeng_meh_chu/core/dialog/food_select_dialog.dart';

void showFoodSelectActionSheet(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return const FoodSelectDialog();
    },
  );
}
