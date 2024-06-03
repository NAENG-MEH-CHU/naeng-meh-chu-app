import 'package:flutter/material.dart';
import 'package:naeng_meh_chu/core/dialog/primary_dialog.dart';

void showFoodSelectActionSheet(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return PrimaryDialog(title: Text('gdgd'),);
    },
  );
}
