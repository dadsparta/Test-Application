import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utilities/Enums/forex_pairs_enum.dart';
import '../../utilities/app_colors.dart';

class CommunityPageView extends StatefulWidget {
  const CommunityPageView({Key? key}) : super(key: key);

  @override
  State<CommunityPageView> createState() => _CommunityPageViewState();
}

class _CommunityPageViewState extends State<CommunityPageView> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: secondColor,
        middle:
            Text("Simulator", style: TextStyle(fontSize: 28, color: textColor)),
        border: Border(bottom: BorderSide.none),
      ),
      child: SafeArea(
        child: Container(
          decoration: BoxDecoration(color: firstColor),
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
                      builder: (context) => AssetDetails(
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

class AssetDetails extends StatelessWidget {
  final ForexPairsEnum forexPair;
  const AssetDetails({
    Key? key,
    required this.forexPair,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: secondColor,
        middle: Text(
          forexPair.name,
          style: TextStyle(color: textColor)
          ),
        ),
      child: SafeArea(
        child: Container(
          decoration: const BoxDecoration(color: firstColor),
          child: InAppWebView(
            initialData:
            InAppWebViewInitialData(data: """<!-- TradingView Widget BEGIN -->
<div class="tradingview-widget-container">
  <div id="tradingview_a4086"></div>
  <div class="tradingview-widget-copyright"><a href="https://www.tradingview.com/" rel="noopener nofollow" target="_blank"><span class="blue-text">just wait</span></a></div>
  <script type="text/javascript" src="https://s3.tradingview.com/tv.js"></script>
  <script type="text/javascript">
  new TradingView.widget(
  {
  "autosize": true,
  "symbol": "FX:${forexPair.name}",
  "interval": "D",
  "timezone": "Etc/UTC",
  "theme": "dark",
  "style": "3",
  "locale": "en",
  "enable_publishing": false,
  "allow_symbol_change": true,
  "container_id": "tradingview_a4086"
}
  );
  </script>
</div>
<!-- TradingView Widget END -->"""),
          ),
        ),
      ),
    );
  }
}
