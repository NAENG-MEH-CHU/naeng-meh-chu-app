import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_color.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_text_style.dart';

class SignUpFinish extends ConsumerWidget {
  const SignUpFinish({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: IntrinsicHeight(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icon/ic_check.svg',
                  height: 48,
                  colorFilter: const ColorFilter.mode(
                      NaengMehChuThemeColor.pink1, BlendMode.srcIn),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(
                    '푸매니저님,\n가입이 완료되었어요!',
                    style: NaengMehChuThemeTextStyle.blackMedium20,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
