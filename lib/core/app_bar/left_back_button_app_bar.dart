import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:naeng_meh_chu/core/app_bar/primary_app_bar.dart';

class LeftBackButtonAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final Function() onPress;
  final String title;

  const LeftBackButtonAppBar(
      {super.key, required this.onPress, required this.title});

  @override
  Widget build(BuildContext context) {
    return PrimaryAppBar(
      leading: IconButton(
        onPressed: onPress,
        icon: SvgPicture.asset('assets/icon/ic_left.svg'),
        padding: const EdgeInsets.all(18.0),
      ),
      title: title,
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
