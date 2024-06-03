import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:naeng_meh_chu/core/app_bar/left_back_button_app_bar.dart';
import 'package:naeng_meh_chu/presentation/recipe/view/search_container.dart';

class ColdScreen extends ConsumerWidget {
  const ColdScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: LeftBackButtonAppBar(
        title: '냉장 보관',
        onPress: () {
          Navigator.pop(context);
        },
      ),
      body: const Expanded(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                SearchContainer(
                  message: '오늘은 이 재료로 음식해 보는 거 어때요?',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
