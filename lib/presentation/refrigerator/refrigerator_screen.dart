import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_text_style.dart';

import '../../core/app_bar/main_app_bar.dart';

class RefrigeratorScreen extends ConsumerWidget {
  const RefrigeratorScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const MainAppBar(
        title: '푸매니저님의 냉장고',
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '총 0개',
                  style: NaengMehChuThemeTextStyle.gray2Regular11,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: SvgPicture.asset('assets/icon/ic_trash.svg'),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: SvgPicture.asset('assets/icon/ic_add.svg'),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
