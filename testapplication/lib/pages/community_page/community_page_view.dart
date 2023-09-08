import 'package:flutter/cupertino.dart';
import 'package:testapplication/utilities/samples/article_sample.dart';
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
              return Article(index: index);
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
