import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:naeng_meh_chu/core/button/primary_button.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_color.dart';

class WhiteButton extends ConsumerWidget {
  final String text;
  final VoidCallback onPressed;
  final bool enabled;

  const WhiteButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.enabled,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PrimaryButton(
      buttonChild: Container(
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text(
          text,
          style: const TextStyle(
            color: NaengMehChuThemeColor.pink1,
            fontSize: 15,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      onPressed: enabled ? onPressed : null,
      enabled: enabled,
      borderRadius: 12.0,
      backgroundColor: NaengMehChuThemeColor.white,
      borderColor: NaengMehChuThemeColor.pink1,
    );
  }
}
