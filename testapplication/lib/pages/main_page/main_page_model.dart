import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:testapplication/pages/calculator_page/calculator_page_view.dart';
import 'package:testapplication/pages/community_page/community_page_view.dart';
import 'package:testapplication/pages/settings_page/settings_page_view.dart';
import 'package:testapplication/utilities/consts/app_colors.dart';

import '../simulator_page/simulator_page_view.dart';
import 'main_page_view.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPage> {
  final List<Widget> tabs = const [
    MainPageView(),
    CommunityPageView(),
    SimulatorPageView(),
    CalculatorPageView(),
    SettingsPageView()

  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: secondColor,
        activeColor: textColor,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.account_balance), label: "Main"),
          BottomNavigationBarItem(icon: Icon(Icons.group), label: "Community"),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.graph_circle_fill), label: "Simulator"),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.calendar_circle), label: "Calculator"),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.settings), label: "Settings"),
        ],
      ),
      tabBuilder: (context, index) {
        return tabs[index];
      },
    );
  }
}
