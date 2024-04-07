import 'package:flutter/cupertino.dart';
import 'package:naeng_meh_chu/presentation/login/view/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(),
      home: LoginScreen(),
    );
  }
}
