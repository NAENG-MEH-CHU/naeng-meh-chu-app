import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_color.dart';
import 'package:naeng_meh_chu/presentation/login/login_screen.dart';

final GlobalKey<ScaffoldMessengerState> snackBarKey =
    GlobalKey<ScaffoldMessengerState>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const LoginScreen(),
          theme: ThemeData(
            fontFamily: 'NotoSansKR',
            scaffoldBackgroundColor: NaengMehChuThemeColor.white,
            textSelectionTheme: const TextSelectionThemeData(
              cursorColor: NaengMehChuThemeColor.black,
            ),
          ),
        ),
      ),
    );
  }
}
