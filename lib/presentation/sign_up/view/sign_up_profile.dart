import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/picture/naeng_meh_chu_picture_circle.dart';
import '../../../core/theme/naeng_meh_chu_theme_text_style.dart';

class SignUpProfile extends ConsumerStatefulWidget {
  const SignUpProfile({super.key});

  @override
  ConsumerState createState() => _SignUpProfileState();
}

class _SignUpProfileState extends ConsumerState<SignUpProfile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '프로필 사진 (선택)',
          style: NaengMehChuThemeTextStyle.blackMedium12,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Center(
            child: Stack(
              alignment: Alignment.bottomRight,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: NaengMehChuPictureCircle(
                    size: 100,
                    asset: "assets/icon/ic_profile.svg",
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const NaengMehChuPictureCircle(
                    size: 39,
                    asset: "assets/icon/ic_camera.svg",
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
