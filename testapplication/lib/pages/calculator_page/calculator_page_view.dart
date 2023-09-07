import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testapplication/utilities/consts/text_samples.dart';

import '../../utilities/consts/app_colors.dart';
import '../../utilities/samples/text_field.dart';

class CalculatorPageView extends StatefulWidget {
  const CalculatorPageView({Key? key}) : super(key: key);

  @override
  State<CalculatorPageView> createState() => _CalculatorPageViewState();
}

class _CalculatorPageViewState extends State<CalculatorPageView> {
  int a = 0;

  void testMethod() {
    a++;
  }

  TextEditingController amountController = TextEditingController();
  TextEditingController percentageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: firstColor,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: secondColor,
        border: const Border(bottom: BorderSide.none),
        middle: NavBarText(text: 'Calculator'),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            SimpleText(
              text: 'Empower your '
                  'investment decisions with our Investment Calculator. '
                  'Easily calculate the potential returns on your investments by entering'
                  'the interest percentage and the initial amount.',
            ),
            const Spacer(),
            SimpleText(text: 'Amount:'),
            const SizedBox(height: 13),
            TextFieldApp(
              controller: amountController,
            ),
            const SizedBox(height: 25),
            SimpleText(text: 'interest Percentage:'),
            const SizedBox(height: 13),
            TextFieldApp(
              controller: percentageController,
            ),
            const SizedBox(height: 25),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: secondColor),
              child: CupertinoButton(
                onPressed: () => testMethod(),
                child: SimpleText(text: 'Calculate'),
              ),
            ),
            const Spacer(),
          ]),
        ),
      ),
    );
  }
}
