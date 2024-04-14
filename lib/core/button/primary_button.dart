import 'package:flutter/material.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_text_style.dart';

import '../base/base_button.dart';
import '../base/bouncing.dart';
import '../theme/naeng_meh_chu_theme_color.dart';

class PrimaryButton extends StatelessWidget implements BaseButton {
  @override
  final double? width;
  @override
  final double? height;
  @override
  final String? text;
  @override
  final VoidCallback? onPressed;
  @override
  final bool enabled;
  @override
  final Color? backgroundColor;
  @override
  final Color? borderColor;
  @override
  final double? borderRadius;
  @override
  final NaengMehChuThemeTextStyle? textStyle;
  @override
  final Widget? buttonChild;
  @override
  final double? fontPadding;

  const PrimaryButton(
      {super.key,
      this.width,
      this.height,
      this.text,
      this.onPressed,
      required this.enabled,
      this.backgroundColor,
      this.borderColor,
      this.borderRadius,
      this.textStyle,
      this.buttonChild,
      this.fontPadding});

  @override
  Widget build(BuildContext context) {
    return enabled
        ? Bouncing(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(borderRadius ?? borderRadius!),
                  color: backgroundColor ?? NaengMehChuThemeColor.white),
              width: width ?? double.infinity,
              child: buttonChild ?? Container(),
            ),
          )
        : Container(
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(borderRadius ?? borderRadius!),
                color: backgroundColor ?? NaengMehChuThemeColor.white),
            width: width ?? double.infinity,
            child: buttonChild ?? Container(),
          );
  }
}
