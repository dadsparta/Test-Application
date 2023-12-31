import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utilities/consts/app_colors.dart';
import '../../utilities/consts/community_constans.dart';
import '../../utilities/consts/text_samples.dart';
import '../../utilities/models/community_model.dart';

class ArticleDetailsPage extends StatelessWidget {
  final CommunityModel article;

  const ArticleDetailsPage({
    Key? key,
    required this.article,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: secondColor,
        border: Border(bottom: BorderSide.none),
      ),
      child: SafeArea(
        child: Container(
          color: firstColor,
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Image.network(
                  article.image),
              const SizedBox(height: 10),
              ArticleTitle(text: article.title),
              const SizedBox(height: 10),
              Row(
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
                            color: article.difficulty >
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
              const SizedBox(height: 20),
              SimpleText(text: article.description)
            ],
          ),
        ),
      ),
    );
  }
}
