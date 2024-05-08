import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:naeng_meh_chu/core/button/primary_button.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_color.dart';

import '../theme/naeng_meh_chu_theme_text_style.dart';

class LoginButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final BorderSide? borderSide;
  final Color? borderColor;
  final SvgPicture svgPicture;
  final String text;

  const LoginButton({
    super.key,
    required this.onPressed,
    this.backgroundColor,
    this.borderSide,
    this.borderColor,
    required this.svgPicture,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: PrimaryButton(
        enabled: true,
        onPressed: onPressed,
        borderRadius: 5,
        backgroundColor: backgroundColor ?? NaengMehChuThemeColor.white,
        borderColor: borderColor ?? NaengMehChuThemeColor.black,
        buttonChild: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            svgPicture,
            Text(
              text,
              style: NaengMehChuThemeTextStyle.blackMedium15,
            ),
            const SizedBox(
              width: 24.0,
            )
          ],
        ),
      ),
    );
  }
}
