import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:naeng_meh_chu/core/app_bar/main_app_bar.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_color.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_text_style.dart';

import '../../core/app_bar/main_app_bar.dart';

class MyPageScreen extends ConsumerWidget {
  const MyPageScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const MainAppBar(
        actions: [],
        title: '마이페이지',
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                height: 98,
                child: Card(
                  color: NaengMehChuThemeColor.pink6,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Row(
                        crossAxisAlignment:
                            CrossAxisAlignment.center, // 수직 가운데 정렬
                        children: [
                          const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/profle_image.png'),
                            radius: 24,
                          ),
                          const SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment:
                                MainAxisAlignment.center, // 수직 가운데 정렬
                            children: const [
                              Text(
                                '푸매니저김아린님!',
                                style: NaengMehChuThemeTextStyle.blackBold15,
                              ),
                              SizedBox(height: 4),
                              Text(
                                '오늘도 즐거운 식사 되세요',
                                style: NaengMehChuThemeTextStyle.blackBold13,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 14), // 각 카드 사이에 여백을 추가
              Container(
                height: 441,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: NaengMehChuThemeColor.pink6,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.book,
                              color: NaengMehChuThemeColor.pink1),
                          title: Text(
                            '내 레시피북 보기',
                            style: NaengMehChuThemeTextStyle.blackBold15,
                          ),
                          trailing: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                // 내 레시피북 보기 클릭 시 동작
                              },
                              child: Icon(Icons.arrow_forward_ios,
                                  color: NaengMehChuThemeColor.pink1),
                            ),
                          ),
                        ),
                        const Divider(),
                        SwitchListTile(
                          secondary: Icon(Icons.notifications,
                              color: NaengMehChuThemeColor.pink1),
                          title: Text(
                            '유통기한 푸시알림',
                            style: NaengMehChuThemeTextStyle.blackBold15,
                          ),
                          value: ref.watch(pushNotificationProvider),
                          activeColor: NaengMehChuThemeColor.pink1, // 활성 상태 색상
                          inactiveThumbColor:
                              NaengMehChuThemeColor.gray3, // 비활성 상태 스위치 색상
                          inactiveTrackColor:
                              NaengMehChuThemeColor.gray2, // 비활성 상태 트랙 색상
                          onChanged: (bool value) {
                            ref.read(pushNotificationProvider.notifier).state =
                                value;
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.person,
                              color: NaengMehChuThemeColor.pink1),
                          title: Text(
                            '개인정보',
                            style: NaengMehChuThemeTextStyle.blackBold15,
                          ),
                          trailing: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                // 개인정보 클릭 시 동작
                              },
                              child: Icon(Icons.arrow_forward_ios,
                                  color: NaengMehChuThemeColor.pink1),
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.info,
                              color: NaengMehChuThemeColor.pink1),
                          title: Text(
                            '약관안내',
                            style: NaengMehChuThemeTextStyle.blackBold15,
                          ),
                          trailing: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                // 약관안내 클릭 시 동작
                              },
                              child: Icon(Icons.arrow_forward_ios,
                                  color: NaengMehChuThemeColor.pink1),
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.lock,
                              color: NaengMehChuThemeColor.pink1),
                          title: Text(
                            '개인정보 처리 방침',
                            style: NaengMehChuThemeTextStyle.blackBold15,
                          ),
                          trailing: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                // 개인정보 처리 방침 클릭 시 동작
                              },
                              child: Icon(Icons.arrow_forward_ios,
                                  color: NaengMehChuThemeColor.pink1),
                            ),
                          ),
                        ),
                        const Divider(),
                        ListTile(
                          leading: Icon(Icons.logout,
                              color: NaengMehChuThemeColor.pink1),
                          title: Text(
                            '로그아웃',
                            style: NaengMehChuThemeTextStyle.blackBold15,
                          ),
                          trailing: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Dialog(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              '로그아웃 하시겠어요?',
                                              style: NaengMehChuThemeTextStyle
                                                  .gray3Bold15,
                                            ),
                                            SizedBox(height: 20),
                                            Divider(),
                                            ListTile(
                                              title: Center(
                                                child: Text(
                                                  '로그아웃 하기',
                                                  style: TextStyle(
                                                      color:
                                                          NaengMehChuThemeColor
                                                              .pink1,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              onTap: () {
                                                // 로그아웃 기능 추가
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                            Divider(),
                                            ListTile(
                                              title: Center(
                                                child: Text(
                                                  '취소',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              onTap: () {
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Icon(Icons.arrow_forward_ios,
                                  color: NaengMehChuThemeColor.pink1),
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.cancel,
                              color: NaengMehChuThemeColor.pink1),
                          title: Text(
                            '회원탈퇴',
                            style: NaengMehChuThemeTextStyle.blackBold15,
                          ),
                          trailing: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Dialog(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              '냉메추를 탈퇴하시겠어요?',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(height: 20),
                                            Text(
                                              '⚠️ 지금까지의 냉메추 기록이 모두 사라져요',
                                              style: NaengMehChuThemeTextStyle
                                                  .pinkBold18,
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              '내 레시피북 보기 레시피가 모두 사라져요\n유통기한 임박 재료 알림을 받을 수 없어요\n저장된 냉장고 재료가 모두 사라져요',
                                              style: NaengMehChuThemeTextStyle
                                                  .gray3Bold15,
                                              textAlign: TextAlign.center,
                                            ),
                                            SizedBox(height: 20),
                                            Divider(),
                                            ListTile(
                                              title: Center(
                                                child: Text(
                                                  '탈퇴하기',
                                                  style: TextStyle(
                                                      color:
                                                          NaengMehChuThemeColor
                                                              .pink1,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              onTap: () {
                                                // 탈퇴 기능 추가
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                            Divider(),
                                            ListTile(
                                              title: Center(
                                                child: Text(
                                                  '취소',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              onTap: () {
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Icon(Icons.arrow_forward_ios,
                                  color: Colors.pinkAccent),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final pushNotificationProvider = StateProvider<bool>((ref) => false);
