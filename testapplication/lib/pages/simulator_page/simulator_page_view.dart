import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utilities/Enums/forex_pairs_enum.dart';
import '../../utilities/consts/app_colors.dart';
import '../../utilities/consts/text_samples.dart';
import '../detail_pages/currency_card.dart';

class SimulatorPageView extends StatefulWidget {
  const SimulatorPageView({Key? key}) : super(key: key);

  @override
  State<SimulatorPageView> createState() => _SimulatorPageViewState();
}

class _SimulatorPageViewState extends State<SimulatorPageView> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: secondColor,
        border: const Border(bottom: BorderSide.none),
        middle: NavBarText(text: 'Simulator'),
      ),
      child: SafeArea(
        child: Container(
          decoration: const BoxDecoration(color: firstColor),
          child: ListView.separated(
            padding: const EdgeInsets.all(16),
            itemCount: ForexPairsEnum.values.length,
            itemBuilder: (context, index) {
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
                  padding: const EdgeInsets.all(16),
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
                      Text(
                        ForexPairsEnum.values[index].name,
                        style: GoogleFonts.poppins(decoration: TextDecoration.none,
                            color: textColor
                        ),
                      ),
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
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 16);
            },
          ),
        ),
      ),
    );
  }
}


