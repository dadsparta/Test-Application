import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testapplication/utilities/consts/text_samples.dart';
import 'package:testapplication/utilities/firebase/firebase.dart';

import '../../utilities/consts/app_colors.dart';
import '../../utilities/samples/text_field.dart';

class CalculatorPageView extends StatefulWidget {
  const CalculatorPageView({Key? key}) : super(key: key);

  @override
  State<CalculatorPageView> createState() => _CalculatorPageViewState();
}

class _CalculatorPageViewState extends State<CalculatorPageView> {


  TextEditingController amountController = TextEditingController();
  TextEditingController percentageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: firstColor,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(children: [
            const SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.center,
              child: NavBarText(text: 'Calculator'),
            ),
            const SizedBox(
              height: 30,
            ),
            SimpleText(
              text: 'Empower your '
                  'investment decisions with our Investment Calculator. '
                  'Easily calculate the potential returns on your investments by entering'
                  'the interest percentage and the initial amount.',
            ),
            const SizedBox(
              height: 50,
            ),
            SimpleText(text: 'Amount:'),
            const SizedBox(height: 13),
            TextFieldApp(
              controller: amountController,
            ),
            const SizedBox(height: 25),
            SimpleText(text: 'Interest percentage:'),
            const SizedBox(height: 13),
            TextFieldApp(
              controller: percentageController,
            ),
            const SizedBox(height: 25),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: secondColor),
              child: CupertinoButton(
                onPressed: () => debugPrint('s'),
                child: SimpleText(text: 'Calculate'),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
