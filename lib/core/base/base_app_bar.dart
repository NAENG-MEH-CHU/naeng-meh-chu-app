import 'package:flutter/material.dart';

abstract class BaseAppBar {
  Widget? get leading;
  double? get leadingWidth;
  String? get title;
  List<Widget>? get actions;
  bool? get centerTitle;
}
