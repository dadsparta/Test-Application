import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testapplication/pages/detail_pages/article_detail.dart';
import 'package:testapplication/utilities/consts/app_colors.dart';
import 'package:testapplication/utilities/consts/text_samples.dart';
import '../consts/community_constans.dart';

class ShortArticle extends StatelessWidget {
  ShortArticle({Key? key, required this.index}) : super(key: key);
  int index;

  @override
  Widget build(BuildContext context) {
    return GFCard(
      borderRadius: BorderRadius.circular(120),
      color: secondColor,
      boxFit: BoxFit.cover,
      image: Image.network(
          'https://images.pexels.com/photos/326055/pexels-photo-326055.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
      title: GFListTile(
        title: ArticleTitle(text: CommunityConstants.communities[index].title),
        subTitle: Row(
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
                      color: CommunityConstants.communities[index].difficulty >
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
      content: SizedBox(
        height: 50,
        child:
            SimpleText(text: CommunityConstants.communities[index].description),
      ),
      buttonBar: GFButtonBar(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 2, 12, 2),
            child: Align(
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
          ),
        ],
      ),
    );
  }
}
