import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:naeng_meh_chu/core/button/primary_button.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_color.dart';

class PinkButton extends ConsumerWidget {
  final String text;
  final VoidCallback onPressed;
  final bool enabled;

  const PinkButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.enabled,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PrimaryButton(
      buttonChild: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0 ),
        child: const Text(
          '다음',
          style: TextStyle(
            color: NaengMehChuThemeColor.white,
            fontSize: 15,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      onPressed: enabled ? onPressed : null,
      enabled: enabled,
      borderRadius: 12.0,
      backgroundColor:
          enabled ? NaengMehChuThemeColor.pink : NaengMehChuThemeColor.gray2,
      borderColor: NaengMehChuThemeColor.white,
    );
  }
}
