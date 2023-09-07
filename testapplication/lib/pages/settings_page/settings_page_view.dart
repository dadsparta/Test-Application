import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testapplication/utilities/consts/app_colors.dart';
import 'package:testapplication/utilities/consts/text_samples.dart';
import 'package:testapplication/utilities/samples/list_tile.dart';

class SettingsPageView extends StatefulWidget {
  const SettingsPageView({Key? key}) : super(key: key);

  @override
  State<SettingsPageView> createState() => _SettingsPageViewState();
}

class _SettingsPageViewState extends State<SettingsPageView> {

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: firstColor,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: secondColor,
        border: const Border(bottom: BorderSide.none),
        middle: NavBarText(text: 'Settings'),
      ),
      child: SafeArea(
        child: CupertinoListSection.insetGrouped(
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          backgroundColor: firstColor,
          children: [
            ListTileApp(title: 'About app',),
            ListTileApp(title: 'Rate app'),
            ListTileApp(title: 'Privacy police'),
            ListTileApp(title: 'Terms & Conditions',),
          ],
        ),
      ),
    );
  }
}
