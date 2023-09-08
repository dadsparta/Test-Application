import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testapplication/utilities/consts/text_samples.dart';
import 'package:testapplication/utilities/samples/short_article.dart';
import 'package:testapplication/utilities/samples/widget_main_screen.dart';
import '../../utilities/consts/app_colors.dart';

class MainPageView extends StatefulWidget {
  const MainPageView({Key? key}) : super(key: key);

  @override
  State<MainPageView> createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  String currentDate = DateTime.now().toString();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: secondColor,
        border: const Border(bottom: BorderSide.none),
        middle: NavBarText(text: 'Main'),
      ),
      child: SafeArea(
        child: Container(
          height: 5000,
          decoration: const BoxDecoration(color: firstColor),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              children: [
                Container(
                  padding: const EdgeInsets.all(14),
                  height: 100,
                  decoration: const BoxDecoration(
                    color: secondColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 50,
                        child: CircleAvatar( backgroundColor: buttonsColor),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SimpleText(text: 'Level: 1'),
                          SimpleText(text: '100/100'),
                        ],
                      ),
                      const Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: SizedBox(
                            width: 50,
                            child: Icon(Icons.account_balance),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TitleText(text: 'Daily statistic:'),
                const SizedBox(
                  height: 15,
                ),
                WidgetMainScreen(title: 'Current date:', subtitle: currentDate),
                Row(
                  children: [
                    WidgetMainScreen(
                      title: 'Readed articles',
                      subtitle: '0',
                    ),
                    WidgetMainScreen(
                      title: 'Liked:',
                      subtitle: '0',
                    ),
                  ],
                ),
                const Divider(thickness: 2),
                const SizedBox(
                  height: 15,
                ),
                TitleText(text: 'Articles:'),
                const SizedBox(
                  height: 15,
                ),
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ShortArticle(index: index);
                    },
                    itemCount: 5)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
