import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_text_style.dart';

abstract class BaseButton {
  double? get width;
  double? get height;
  String? get text;
  double? get fontSize;
  Color? get textColor;
  void Function()? get onPressed;
  bool get enabled;
  Color? get backgroundColor;
  BorderSide? get borderSide;
  Color? get borderColor;
  double? get borderRadius;
  Widget? get buttonChild;
  double? get fontPadding;
}