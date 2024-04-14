import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:naeng_meh_chu/core/button/primary_button.dart';

import '../theme/naeng_meh_chu_theme_color.dart';
import '../theme/naeng_meh_chu_theme_text_style.dart';

class LoginButton extends StatelessWidget {
  final Color backgroundColor;
  final SvgPicture svgPicture;
  final String text;

  const LoginButton({
    super.key,
    required this.backgroundColor,
    required this.svgPicture,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: PrimaryButton(
        enabled: true,
        borderRadius: 5,
        backgroundColor: backgroundColor,
        buttonChild: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              svgPicture,
              Expanded(
                child: Center(
                  child: Text(
                    text,
                    style: NaengMehChuThemeTextStyle.blackMedium15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
