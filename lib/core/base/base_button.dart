import 'package:flutter/material.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_text_style.dart';

abstract class BaseButton {
  double? get width;
  double? get height;
  String? get text;
  void Function()? get onPressed;
  bool get enabled;
  Color? get backgroundColor;
  Color? get borderColor;
  double? get borderRadius;
  NaengMehChuThemeTextStyle? get textStyle;
  Widget? get buttonChild;
  double? get fontPadding;
}