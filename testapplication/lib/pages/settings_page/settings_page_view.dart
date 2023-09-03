import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testapplication/utilities/app_colors.dart';

class SettingsPageView extends StatefulWidget {
  const SettingsPageView({Key? key}) : super(key: key);

  @override
  State<SettingsPageView> createState() => _SettingsPageViewState();
}

class _SettingsPageViewState extends State<SettingsPageView> {
  int a = 1;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: firstColor,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: secondColor,
        middle:
            Text("Settings", style: TextStyle(fontSize: 28, color: textColor)),
        border: Border(bottom: BorderSide.none),
      ),
      child: SafeArea(
        child: CupertinoListSection.insetGrouped(
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          backgroundColor: firstColor,
          children: [
            CupertinoListTile(
              backgroundColorActivated: buttonsColor,
              backgroundColor: secondColor,
              title: const Text(
                'About app',
                style: TextStyle(color: textColor),
              ),
              onTap: (){
                return a++;
              },
            ),
            CupertinoListTile(
              backgroundColorActivated: buttonsColor,
              backgroundColor: secondColor,
              title: const Text(
                'Rate app',
                style: TextStyle(color: textColor),
              ),
              onTap: (){
                return a++;
              },
            ),
            CupertinoListTile(
              backgroundColorActivated: buttonsColor,
              backgroundColor: secondColor,
              title: const Text(
                'Privacy police',
                style: TextStyle(color: textColor),
              ),
              onTap: () {
                return a++;
              },
            ),
            CupertinoListTile(
              backgroundColor: secondColor,
              backgroundColorActivated: buttonsColor,
              title: const Text(
                'Terms & Conditions',
                style: TextStyle(color: textColor),
              ),
              onTap: () {
                return a++;
              },
            ),
          ],
        ),
      ),
    );
  }
}
