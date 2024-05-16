import 'package:flutter/material.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_color.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_text_style.dart';

import '../base/base_app_bar.dart';

class PrimaryAppBar extends StatelessWidget
    implements PreferredSizeWidget, BaseAppBar {
  const PrimaryAppBar(
      {super.key,
      this.leading,
      this.leadingWidth,
      this.title,
      this.actions,
      this.centerTitle,
      this.shape});

  @override
  final Widget? leading;
  @override
  final double? leadingWidth;
  @override
  final String? title;
  @override
  final List<Widget>? actions;
  @override
  final bool? centerTitle;
  @override
  final ShapeBorder? shape;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      leadingWidth: leadingWidth,
      title: title != null
          ? Text(
              title!,
              style: NaengMehChuThemeTextStyle.pinkMedium18,
            )
          : null,
      actions: actions,
      centerTitle: centerTitle,
      titleSpacing: 0,
      backgroundColor: NaengMehChuThemeColor.white,
      elevation: 0.0,
      bottomOpacity: 0.0,
      scrolledUnderElevation: 0,
      shape: shape,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
