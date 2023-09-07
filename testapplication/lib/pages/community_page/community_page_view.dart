import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/card/gf_card.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utilities/consts/app_colors.dart';
import '../../utilities/consts/community_constans.dart';
import '../../utilities/consts/text_samples.dart';

class CommunityPageView extends StatefulWidget {
  const CommunityPageView({Key? key}) : super(key: key);

  @override
  State<CommunityPageView> createState() => _CommunityPageViewState();
}

class _CommunityPageViewState extends State<CommunityPageView> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: secondColor,
        middle: NavBarText(
          text: 'Community',
        ),
      ),
      child: SafeArea(
        child: Container(
          color: firstColor,
          child: ListView.separated(
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
        ),
      ),
    );
  }
}
