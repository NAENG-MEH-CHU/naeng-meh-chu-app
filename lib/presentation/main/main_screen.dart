import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_color.dart';

class MainScreen extends ConsumerStatefulWidget {
  final int selectedIndex;

  const MainScreen({Key? key, required this.selectedIndex}) : super(key: key);

  @override
  ConsumerState createState() => _MainScreenState(selectedIndex);
}

class _MainScreenState extends ConsumerState<MainScreen> {
  int _selectedIndex;

  _MainScreenState(this._selectedIndex);

  static const List<Widget> _widgetOptions = <Widget>[
    // HomeScreen(),
    // FarmclubScreen(),
    // SearchScreen(),
  ];

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/image/ic_home.svg",
              // colorFilter: ColorFilter.mode(
              //     _selectedIndex == 0
              //         ? FarmusThemeColor.gray1
              //         : FarmusThemeColor.gray4,
              //     BlendMode.srcIn),
            ),
            label: "홈",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/image/ic_farmclub.svg",
              // colorFilter: ColorFilter.mode(
              //     _selectedIndex == 1
              //         ? FarmusThemeColor.gray1
              //         : FarmusThemeColor.gray4,
              //     BlendMode.srcIn),
            ),
            label: "팜클럽",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/image/ic_union.svg",
              // colorFilter: ColorFilter.mode(
              //     _selectedIndex == 3
              //         ? FarmusThemeColor.gray1
              //         : FarmusThemeColor.gray4,
              //     BlendMode.srcIn),
            ),
            label: "마이페이지",
          ),
        ],
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: NaengMehChuThemeColor.white,
      ),
    );
  }
}
