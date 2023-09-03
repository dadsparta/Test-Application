import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testapplication/pages/community_page/community_page_view.dart';
import 'package:testapplication/pages/settings_page/settings_page_view.dart';
import 'package:testapplication/utilities/app_colors.dart';

class MainPageView extends StatefulWidget {
  const MainPageView({Key? key}) : super(key: key);

  @override
  State<MainPageView> createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  final List<Widget> tabs = const [
    CommunityPageView(),
    SettingsPageView()

  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: secondColor,
        items: const [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.increase_indent)),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.settings)),
        ],
      ),
      tabBuilder: (context, index) {
        return tabs[index];
      },
    );
  }
}
