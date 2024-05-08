import 'package:flutter/cupertino.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_text_style.dart';
import 'package:naeng_meh_chu/presentation/sign_up/view/sign_up_motivation_box.dart';

class SignUpSecondMotivation extends StatelessWidget {
  const SignUpSecondMotivation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 32.0),
          child: Text(
            '냉메추를\n사용하는 이유가 무엇인가요?',
            style: NaengMehChuThemeTextStyle.blackMedium20,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: SignUpMotivationBox(
            title: '다이어트를 하는데 집에 있는 음식들로\n식단을 관리하고 싶어요.',
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: SignUpMotivationBox(
            title: '좀 더 다양한 음식을\n해 먹고 싶어요.',
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: SignUpMotivationBox(
            title: '유통기한이 임박한 재료들로 요리를 해서\n버려지는 음식을 줄이고 싶어요.',
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: SignUpMotivationBox(
            title: '몸에 좋은 건강한 레시피를\n추천받고 싶어요.',
          ),
        ),
      ],
    );
  }
}
