import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testapplication/utilities/consts/text_samples.dart';
import 'package:testapplication/utilities/samples/currency_card.dart';
import 'package:testapplication/utilities/samples/short_article.dart';
import 'package:testapplication/utilities/samples/widget_main_screen.dart';
import '../../utilities/Enums/forex_pairs_enum.dart';
import '../../utilities/consts/app_colors.dart';
import '../detail_pages/currency_card.dart';

class MainPageView extends StatefulWidget {
  const MainPageView({Key? key}) : super(key: key);

  @override
  State<MainPageView> createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  String currentDate = DateTime.now().toString();

  final currentDay = DateTime.now().toUtc().day.toString();
  final currentMonth = DateTime.now().toUtc().month.toString();
  final currentYear = DateTime.now().toUtc().year.toString();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(14),
          height: 5000,
          decoration: const BoxDecoration(color: firstColor),
          child: ListView(
            children: [
              const SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.center,
                child: NavBarText(text: 'Main'),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.all(15),
                height: 100,
                width: 300,
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
                      child: CircleAvatar(backgroundColor: buttonsColor),
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
                          child: Icon(Icons.question_mark,color: buttonsColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8,),
              Row(
                children: [
                  WidgetMainScreen(
                      title: 'Current date:',
                      subtitle: "$currentMonth.$currentDay.$currentYear"),
                  const SizedBox(width: 8,),
                  WidgetMainScreen(
                      title: 'Strike',
                      subtitle: "1"),

                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Divider(thickness: 2),
              TitleText(text: 'Popular currencies:'),
              const SizedBox(
                height: 15,
              ),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return CurrencyCard(index: index);
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 16);
                },
              ),
              const Divider(thickness: 2),
              const SizedBox(
                height: 15,
              ),
              TitleText(text: 'Latest articles:'),
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
                  itemCount: 3),
            ],
          ),
        ),
      ),
    );
  }
}
