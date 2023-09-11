import 'package:flutter/material.dart';
import 'package:testapplication/utilities/consts/text_samples.dart';

import '../consts/app_colors.dart';

class WidgetMainScreen extends StatelessWidget {
  WidgetMainScreen({Key? key, required this.title, required this.subtitle})
      : super(key: key);
  String title;
  String subtitle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 100,
        decoration: const BoxDecoration(
          color: secondColor,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              SimpleText(
                text: title,
              ),
              const SizedBox(
                height: 15,
              ),
              SimpleText(
                text: subtitle,
              )
            ],
          ),
        ),
      ),
    );
  }
}