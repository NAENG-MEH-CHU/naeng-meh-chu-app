import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:naeng_meh_chu/core/app_bar/primary_app_bar.dart';

class LeftBackButtonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LeftBackButtonAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return PrimaryAppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: SvgPicture.asset('assets/icon/ic_left.svg'),
        padding: const EdgeInsets.all(18.0),
      ),
      title: '회원가입',
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
