import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testapplication/utilities/samples/currency_card.dart';
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
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(15),
          height: 5000,
          decoration: const BoxDecoration(color: firstColor),
          child: ListView(
            children: [
              const SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.center,
                child: NavBarText(text: 'Simulator'),
              ),
              const SizedBox(
                height: 30,
              ),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: ForexPairsEnum.values.length,
                itemBuilder: (context, index) {
                  return CurrencyCard(index: index);
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 16);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
