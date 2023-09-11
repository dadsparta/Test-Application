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
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(15),
          height: 5000,
          decoration: const BoxDecoration( color: firstColor),
          child: ListView(
            children: [
              const SizedBox(height: 15,),
              Align(
                alignment: Alignment.center,
                child: NavBarText(text: 'Community'),
              ),
              const SizedBox(height: 30,),
              Container(
                color: firstColor,
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: CommunityConstants.communities.length,
                  itemBuilder: (context, index) {
                    return Article(index: index);
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 0);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
