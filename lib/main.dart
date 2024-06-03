import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_color.dart';
import 'package:naeng_meh_chu/presentation/main/main_screen.dart';
import 'package:naeng_meh_chu/presentation/sign_in/sign_in_screen.dart';

import 'data/app_url.dart';
import 'firebase_options.dart';

final GlobalKey<ScaffoldMessengerState> snackBarKey =
    GlobalKey<ScaffoldMessengerState>();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: "lib/.env");
  await AppUrl.initialize();

  if (Firebase.apps.isEmpty) {
    await Firebase.initializeApp(
      name: "냉메추",
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
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
          home: const MainScreen(selectedIndex: 1),
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
