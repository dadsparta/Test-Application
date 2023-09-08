import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../consts/app_colors.dart';

class ListTileApp extends StatelessWidget {
  ListTileApp({Key? key, required this.title, required this.function}) : super(key: key);
  String title;
  Function function;

  @override
  Widget build(BuildContext context) {
    return CupertinoListTile(
      backgroundColorActivated: buttonsColor,
      backgroundColor: secondColor,
      title: Text(
        title,
        style: TextStyle(color: textColor),
      ),
      onTap: () => function(),
    );
  }
}
