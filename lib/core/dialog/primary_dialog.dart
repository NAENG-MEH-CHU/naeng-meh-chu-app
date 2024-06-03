import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_color.dart';

import '../base/base_dialog.dart';

class PrimaryDialog extends ConsumerWidget implements BaseDialog {
  const PrimaryDialog(
      {super.key, this.title, this.content, this.actions});

  @override
  final Widget? title;
  @override
  final Widget? content;
  @override
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AlertDialog(
      title: title,
      content: content,
      actions: actions,
      backgroundColor: NaengMehChuThemeColor.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(24)),
      ),
    );
  }
}
