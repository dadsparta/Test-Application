import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utilities/consts/app_colors.dart';
import '../../utilities/consts/text_samples.dart';



class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({Key? key}) : super(key: key);

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}
class _TermsAndConditionsState extends State<TermsAndConditions> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: secondColor,
        border: const Border(bottom: BorderSide.none),
        middle: NavBarText(text: 'Terms & conditions'),
      ),
      child: SafeArea(
        child: Container(
          height: 5000,
          width: 5000,
          color: firstColor,
          child: Padding(
              padding: const EdgeInsets.all(14),
              child: SimpleText(
                text: 'Id lacus nisi vel pellentesque at magnis posuere'
                    ' aliquam nisl, feugiat dignissim pulvinar tristique nascetur'
                    ' torquent mattis erat, ex nibh dictumst ipsum hendrerit parturient'
                    ' montes nulla. Sem fames quam ridiculus eleifend laoreet'
                    ' sociosqu eget luctus, nec tristique faucibus maximus torquent'
                    ' aptent mus. Tellus aptent mattis pulvinar dis conubia nullam'
                    ' volutpat eu penatibus habitant at eleifend, eget accumsan'
                    ' rutrum risus potenti sodales sagittis fermentum varius'
                    ' imperdiet elit, neque semper convallis montes cubilia'
                    ' tristique vitae aliquam laoreet nostra velit.   Et proin'
                    ' feugiat tellus facilisi sem ultrices in, iaculis dapibus'
                    ' ligula libero vulputate ornare congue vivamus, hac purus'
                    ' tristique odio massa gravida. Quisque class sed integer'
                    ' habitant auctor fermentum egestas potenti congue tempus,'
                    ' felis accumsan ante justo porta sodales tincidunt lacinia'
                    ' maximus, mollis varius fusce pretium gravida elit erat'
                    ' suscipit sapien. Nec dictum eget semper condimentum'
                    ' pretium commodo auctor sapien vestibulum enim montes'
                    ' facilisi, imperdiet leo urna consequat tristique feugiat'
                    ' ultricies magnis mattis praesent proin. Eget augue mollis'
                    ' volutpat efficitur quam pretium tellus tempor vel montes'
                    ' nisi hac, lobortis consectetur nibh laoreet litora class'
                    ' nullam hendrerit proin convallis magnis.',)
          ),
        ),
      ),
    );
  }
}