import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_color.dart';
import 'package:naeng_meh_chu/presentation/my_page/my_page_screen.dart';
import 'package:naeng_meh_chu/presentation/recipe/recipe_screen.dart';
import 'package:naeng_meh_chu/presentation/refrigerator/refrigerator_screen.dart';

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
    RecipeScreen(),
    RefrigeratorScreen(),
    MyPageScreen(),
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
              "assets/icon/ic_recipe.svg",
              colorFilter: ColorFilter.mode(
                  _selectedIndex == 0
                      ? NaengMehChuThemeColor.pink1
                      : NaengMehChuThemeColor.gray2,
                  BlendMode.srcIn),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icon/ic_refrigerator.svg",
              colorFilter: ColorFilter.mode(
                  _selectedIndex == 1
                      ? NaengMehChuThemeColor.pink1
                      : NaengMehChuThemeColor.gray2,
                  BlendMode.srcIn),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icon/ic_home_person.svg",
              colorFilter: ColorFilter.mode(
                  _selectedIndex == 2
                      ? NaengMehChuThemeColor.pink1
                      : NaengMehChuThemeColor.gray2,
                  BlendMode.srcIn),
            ),
            label: "",
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
