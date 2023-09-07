import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../consts/app_colors.dart';

class TextFieldApp extends StatelessWidget {
  TextFieldApp({Key? key, required this.controller}) : super(key: key);

  TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return  CupertinoTextField(
      controller: controller,
      cursorColor: buttonsColor,
      decoration: const BoxDecoration(
        color: secondColor,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
    );
  }
}

