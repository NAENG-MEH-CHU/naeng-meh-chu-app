import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:naeng_meh_chu/core/button/primary_button.dart';

import '../../../core/theme/naeng_meh_chu_theme_color.dart';
import '../../../core/theme/naeng_meh_chu_theme_text_style.dart';

class SignUpMotivationBox extends ConsumerWidget {
  final String title;
  final bool isChecked;
  final Function() onPressed;

  const SignUpMotivationBox({
    super.key,
    required this.title,
    required this.isChecked,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PrimaryButton(
      enabled: true,
      backgroundColor:
          isChecked ? NaengMehChuThemeColor.pink3 : NaengMehChuThemeColor.white,
      borderColor: NaengMehChuThemeColor.pink1,
      buttonChild: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 16,
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          style: NaengMehChuThemeTextStyle.blackMedium14,
          textAlign: TextAlign.center,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
