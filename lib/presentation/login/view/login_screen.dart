import 'package:flutter/material.dart';
import 'package:naeng_meh_chu/core/app_bar/primary_app_bar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PrimaryAppBar(
        title: "로그인",
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
