import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:naeng_meh_chu/presentation/sign_up/view_model/sign_up_provider.dart';

import '../../../core/text_form/primary_text_form_field.dart';
import '../../../core/theme/naeng_meh_chu_theme_color.dart';
import '../../../core/theme/naeng_meh_chu_theme_text_style.dart';

class SignUpNickname extends ConsumerWidget {
  const SignUpNickname({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nickname = ref.watch(signUpMemberProfileProvider).nickname;

    return Column(
      children: [
        Row(
          children: <Widget>[
            const Text(
              '닉네임',
              style: NaengMehChuThemeTextStyle.blackMedium12,
            ),
            const SizedBox(
              width: 6,
            ),
            SvgPicture.asset(
              'assets/icon/ic_check.svg',
              colorFilter: (nickname == null || nickname.isEmpty)
                  ? null
                  : const ColorFilter.mode(
                      NaengMehChuThemeColor.pink, BlendMode.srcIn),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: PrimaryTextFormField(
            initialValue: '',
            maxLength: 5,
            maxLines: 1,
            minLines: 1,
            hintText: '1~5자/ 영어 대소문자, 한글, 숫자 조합가능',
            onChanged: (value) {
              ref
                  .read(signUpMemberProfileProvider.notifier)
                  .updateNickname(value);
            },
          ),
        ),
      ],
    );
  }
}
