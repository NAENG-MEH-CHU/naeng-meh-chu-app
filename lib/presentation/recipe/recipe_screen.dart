import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:naeng_meh_chu/presentation/recipe/view/recipe_card.dart';
import 'package:naeng_meh_chu/presentation/recipe/view/search_container.dart';

import '../../core/app_bar/main_app_bar.dart';

class RecipeScreen extends ConsumerWidget {
  const RecipeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      appBar: MainAppBar(
        title: '레시피',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              SearchContainer(message: '오늘의 레시피를 검색해 보세요',),
              SizedBox(
                height: 32.0,
              ),
              RecipeCard(
                title: '옆집 할머니가 해주신 삼계탕 레시피',
                description:
                '할머니가 해주신 맛이 나는 맛있는 삼계탕 레시피를 공유할게요! 자취생들도 쉽게 만들 수 있어요!',
              ),
              RecipeCard(
                title: '옆집 할머니가 해주신 삼계탕 레시피',
                description:
                '할머니가 해주신 맛이 나는 맛있는 삼계탕 레시피를 공유할게요! 자취생들도 쉽게 만들 수 있어요!',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
