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
  final Color? textColor;
  @override
  final double? fontSize;
  @override
  final VoidCallback? onPressed;
  @override
  final bool enabled;
  @override
  final Color? backgroundColor;
  @override
  final BorderSide? borderSide;
  @override
  final Color? borderColor;
  @override
  final double? borderRadius;
  @override
  final Widget? buttonChild;
  @override
  final double? fontPadding;

  const PrimaryButton(
      {super.key,
      this.width,
      this.height,
      this.text,
      this.fontSize,
      this.textColor,
      this.onPressed,
      required this.enabled,
      this.backgroundColor,
      this.borderSide,
      this.borderColor,
      this.borderRadius,
      this.buttonChild,
      this.fontPadding});

  @override
  Widget build(BuildContext context) {
    return enabled
        ? Bouncing(
            child: GestureDetector(
              onTap: onPressed,
              child: Container(
                decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: borderSide ?? BorderSide.none,
                      borderRadius: borderRadius == null
                          ? BorderRadius.circular(8.0)
                          : BorderRadius.circular(borderRadius!),
                    ),
                    color: backgroundColor ?? NaengMehChuThemeColor.white),
                width: width ?? double.infinity,
                child: buttonChild == null
                    ? Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: fontPadding ?? 8.0),
                        child: Text(
                          text!,
                          style: TextStyle(
                            color: textColor,
                            fontSize: fontSize,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )
                    : buttonChild!,
              ),
            ),
          )
        : Container(
            decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: borderSide ?? const BorderSide(width: 0),
                  borderRadius:
                      BorderRadius.circular(borderRadius ?? borderRadius!),
                ),
                color: backgroundColor ?? NaengMehChuThemeColor.white),
            width: width ?? double.infinity,
            child: buttonChild ?? Container(),
          );
  }
}
