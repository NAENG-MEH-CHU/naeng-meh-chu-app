import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_text_style.dart';
import 'package:naeng_meh_chu/presentation/sign_up/view/sign_up_motivation_box.dart';
import 'package:naeng_meh_chu/presentation/sign_up/view_model/notifier/initialize_notifier.dart';
import 'package:naeng_meh_chu/presentation/sign_up/view_model/sign_up_provider.dart';

class SignUpSecondMotivation extends ConsumerWidget {
  const SignUpSecondMotivation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var motivation = ref.watch(motivationProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 32.0),
          child: Text(
            '냉메추를\n사용하는 이유가 무엇인가요?',
            style: NaengMehChuThemeTextStyle.blackMedium20,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: SignUpMotivationBox(
            title: '다이어트를 하는데 집에 있는 음식들로\n식단을 관리하고 싶어요.',
            onPressed: () {
              ref.watch(motivationProvider.notifier).toggleMotivation(0);
            },
            isChecked: motivation[0],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: SignUpMotivationBox(
            title: '좀 더 다양한 음식을\n해 먹고 싶어요.',
            onPressed: () {
              ref.watch(motivationProvider.notifier).toggleMotivation(1);
            },
            isChecked: motivation[1],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: SignUpMotivationBox(
            title: '유통기한이 임박한 재료들로 요리를 해서\n버려지는 음식을 줄이고 싶어요.',
            onPressed: () {
              ref.watch(motivationProvider.notifier).toggleMotivation(2);
            },
            isChecked: motivation[2],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: SignUpMotivationBox(
            title: '몸에 좋은 건강한 레시피를\n추천받고 싶어요.',
            onPressed: () {
              ref.watch(motivationProvider.notifier).toggleMotivation(3);
            },
            isChecked: motivation[3],
          ),
        ),
      ],
    );
  }
}
