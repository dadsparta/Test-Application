import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testapplication/utilities/consts/text_samples.dart';
import 'package:testapplication/utilities/samples/widget_main_screen.dart';
import 'package:getwidget/getwidget.dart';
import '../../utilities/consts/app_colors.dart';
import '../../utilities/consts/community_constans.dart';

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
          decoration: const BoxDecoration(color: firstColor),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(children: [
              const CupertinoListTile(
                  leadingSize: 80,
                  leading: CircleAvatar(backgroundColor: buttonsColor),
                  subtitle: Text(
                    '100/100',
                    style: TextStyle(color: buttonsColor),
                  ),
                  backgroundColor: secondColor,
                  trailing: Icon(CupertinoIcons.arrow_2_squarepath),
                  title: Text(
                    'level',
                    style: TextStyle(color: textColor),
                  )),
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
              TitleText(text: 'News:'),
              const SizedBox(
                height: 15,
              ),
              GFCard(
                boxFit: BoxFit.cover,
                image: Image.network('https://images.pexels.com/photos/326055/pexels-photo-326055.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                title: GFListTile(
                  title: Text('Title'),
                  subTitle: Text('Sub Title'),
                ),
                content: Text("Some quick example text to build on the card"),
                buttonBar: GFButtonBar(
                  children: <Widget>[
                    GFButton(
                      onPressed: () {},
                      text: 'OK',
                    ),
                    GFButton(
                      onPressed: () {},
                      text: 'Cancel',
                    ),
                  ],
                ),
              ),
              ListView.separated(
                itemCount: CommunityConstants.communities.length,
                padding: const EdgeInsets.all(16),
                itemBuilder: (context, index) {
                  return GFCard(
                    borderRadius: BorderRadius.circular(120),
                    color: secondColor,
                    boxFit: BoxFit.cover,
                    image: Image.network(
                        'https://images.pexels.com/photos/326055/pexels-photo-326055.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    title: GFListTile(
                      title: ArticleTitle(
                          text: CommunityConstants.communities[index].title),
                      subTitle: Row(
                        children: [
                          Text(
                            "Difficulty: ",
                            style: GoogleFonts.poppins(
                              decoration: TextDecoration.none,
                              color: Colors.red,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                          Row(
                            children: List.generate(
                              5,
                                  (dotIndex) {
                                return Container(
                                  margin: const EdgeInsets.only(right: 4),
                                  height: 16,
                                  width: 16,
                                  decoration: BoxDecoration(
                                    color: CommunityConstants
                                        .communities[index].difficulty >
                                        dotIndex
                                        ? Colors.red
                                        : Colors.red.withOpacity(0.5),
                                    shape: BoxShape.circle,
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    content: SimpleText(
                        text: CommunityConstants.communities[index].description),
                    buttonBar: GFButtonBar(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(13, 2, 2, 2),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: GFButton(
                              color: buttonsColor,
                              onPressed: () {},
                              text: 'Read more',
                              textStyle: const TextStyle(color: textColor),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 0);
                },
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
