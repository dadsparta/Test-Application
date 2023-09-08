import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testapplication/pages/privacy_and_policy_page/privacy_and_policy.dart';
import 'package:testapplication/pages/terms_and_conditions/terms_and_conditions_view.dart';
import 'package:testapplication/utilities/consts/app_colors.dart';
import 'package:testapplication/utilities/consts/text_samples.dart';
import 'package:testapplication/utilities/samples/list_tile.dart';

import '../about_app_page/about_app_view.dart';

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
            ListTileApp(
              title: 'About app',
              function: () => Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (context) => const AboutApp(),
                ),
              ),
            ),
            ListTileApp(title: 'Rate app', function: () {}),
            ListTileApp(
              title: 'Privacy & police',
              function: () => Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (context) => const PrivacyAndPolicy(),
                ),
              ),
            ),
            ListTileApp(
              title: 'Terms & Conditions',
              function: () => Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (context) => const TermsAndConditions(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
