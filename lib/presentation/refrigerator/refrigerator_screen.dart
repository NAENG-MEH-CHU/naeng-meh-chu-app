import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/app_bar/main_app_bar.dart';

class RefrigeratorScreen extends ConsumerWidget {
  const RefrigeratorScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      appBar: MainAppBar(
        title: '푸매니저님의 냉장고',
      ),
    );
  }
}