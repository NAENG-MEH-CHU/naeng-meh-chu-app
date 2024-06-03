import 'package:flutter/cupertino.dart';

abstract class BaseDialog {
  Widget? get title;

  TextStyle? get titleTextStyle;

  Widget? get content;

  List<Widget>? get actions;
}
