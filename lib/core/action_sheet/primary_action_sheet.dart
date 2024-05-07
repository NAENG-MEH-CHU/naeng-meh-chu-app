
import 'package:flutter/cupertino.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_text_style.dart';

import '../base/base_action_sheet.dart';

class PrimaryActionSheet extends StatelessWidget implements BaseActionSheet {
  const PrimaryActionSheet(
      {super.key, this.title, this.message, this.actions, this.cancelButton});

  @override
  final String? title;
  @override
  final List<Widget>? actions;
  @override
  final Widget? cancelButton;
  @override
  final String? message;

  @override
  Widget build(BuildContext context) {
    return CupertinoActionSheet(
      title: title != null
          ? Text(
        title!,
        style: NaengMehChuThemeTextStyle.blackMedium12,
      )
          : null,
      message: message != null
          ? Text(
        message!,
        style: NaengMehChuThemeTextStyle.blackMedium12,
      )
          : null,
      actions: actions ?? [],
      cancelButton: cancelButton,
    );
  }
}
