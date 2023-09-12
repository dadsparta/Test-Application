import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:testapplication/utilities/consts/text_samples.dart';

import '../../pages/detail_pages/currency_card.dart';
import '../Enums/forex_pairs_enum.dart';
import '../consts/app_colors.dart';

class CurrencyCard extends StatelessWidget {
  const CurrencyCard({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      disabledColor: buttonsColor,
      padding: EdgeInsets.zero,
      onPressed: () {
        Navigator.of(context).push(
          CupertinoPageRoute(
            builder: (context) => CurrencyCardDetail(
              forexPair: ForexPairsEnum.values[index],
            ),
          ),
        );
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(14),
        decoration: const BoxDecoration(
          color: secondColor,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 40,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(50),
                      ),
                      child: ColoredBox(
                        color: Colors.grey,
                        child: SvgPicture.network(
                          "https://s3-symbol-logo.tradingview.com/country/${ForexPairsEnum.values[index].name[0]}${ForexPairsEnum.values[index].name[1]}.svg",
                          height: 24,
                          width: 24,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            ArticleTitle(text: ForexPairsEnum.values[index].name),
            const SizedBox(width: 16),
            SizedBox(
              width: 40,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(50),
                      ),
                      child: ColoredBox(
                        color: Colors.grey,
                        child: SvgPicture.network(
                          "https://s3-symbol-logo.tradingview.com/country/${ForexPairsEnum.values[index].name[3]}${ForexPairsEnum.values[index].name[4]}.svg",
                          height: 24,
                          width: 24,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
