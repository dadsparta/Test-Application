import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../consts/app_colors.dart';

class NavBarApp extends StatelessWidget {
  NavBarApp({Key? key, required this.title}) : super(key: key);
  String title;
  @override
  Widget build(BuildContext context) {
    return CupertinoNavigationBar(
        backgroundColor: secondColor,
        middle:
        Text(title, style: const TextStyle(fontSize: 28, color: textColor)),
    border: const Border(bottom: BorderSide.none));
  }
}
