import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:naeng_meh_chu/core/app_bar/left_back_button_app_bar.dart';
import 'package:naeng_meh_chu/core/button/pink_button.dart';
import 'package:naeng_meh_chu/presentation/sign_up/view/sign_up_first_profile.dart';

import '../../core/button/primary_button.dart';
import '../../core/theme/naeng_meh_chu_theme_color.dart';
import '../../core/theme/naeng_meh_chu_theme_text_style.dart';

class SignUpScreen extends ConsumerWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const LeftBackButtonAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [SignUpFirstProfile()],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
              child: PinkButton(onPressed: () {}, enabled: true, text: '다음'),
            )
          ],
        ),
      ),
    );
  }
}
