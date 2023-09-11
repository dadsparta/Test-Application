import 'dart:ui';
import 'package:flutter/cupertino.dart';

import 'app_colors.dart';

class SimpleText extends StatelessWidget {
  SimpleText({Key? key, required this.text}) : super(key: key);
  String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: textColor,
        fontSize: 14,
        decoration: TextDecoration.none,
      ),
    );
  }
}

class ArticleTitle extends StatelessWidget {
  ArticleTitle({Key? key, required this.text}) : super(key: key);
  String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: textColor,
        fontSize: 18,
        decoration: TextDecoration.none,
      ),
    );
  }
}

class NavBarText extends StatelessWidget {
  NavBarText({Key? key, required this.text}) : super(key: key);
  String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: const TextStyle(
          fontSize: 28,
          color: textColor,
          decoration: TextDecoration.none,
        ));
  }
}

class TitleText extends StatelessWidget {
  TitleText({Key? key, required this.text}) : super(key: key);
  String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 24,
        color: textColor,
        decoration: TextDecoration.none,
      ),
    );
  }
}
