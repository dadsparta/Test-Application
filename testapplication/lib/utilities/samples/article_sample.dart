import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testapplication/pages/detail_pages/article_detail.dart';
import 'package:testapplication/utilities/consts/app_colors.dart';

import '../consts/community_constans.dart';
import '../consts/text_samples.dart';

class Article extends StatelessWidget {
  Article({Key? key, required this.index}) : super(key: key);
  int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 335,
      decoration: BoxDecoration(
          color: secondColor, borderRadius: BorderRadius.circular(14)),
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 14),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(14, 0, 14, 0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 150,
                child: Image.network(
                CommunityConstants.communities[index].image),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: ArticleTitle(
                  text: CommunityConstants.communities[index].title),
            ),
            Row(
              children: [
                Text(
                  "Difficulty: ",
                  style: GoogleFonts.poppins(
                    decoration: TextDecoration.none,
                    color: Colors.red,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                Row(
                  children: List.generate(
                    5,
                    (dotIndex) {
                      return Container(
                        margin: const EdgeInsets.only(right: 4),
                        height: 12,
                        width: 12,
                        decoration: BoxDecoration(
                          color:
                              CommunityConstants.communities[index].difficulty >
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
            const SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: SizedBox(
                height: 66,
                child: SimpleText(
                    text: CommunityConstants.communities[index].description),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: GFButton(
                color: secondColor,
                onPressed: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (context) => ArticleDetailsPage(
                        article: CommunityConstants.communities[index],
                      ),
                    ),
                  );
                },
                text: 'Read more',
                textStyle: const TextStyle(color: textColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
