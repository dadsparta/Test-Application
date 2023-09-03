import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
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
            Text("Settings", style: TextStyle(fontSize: 28, color: textColor)),
        border: Border(bottom: BorderSide.none),
      ),
      child: SafeArea(
        child: ListView.separated(
          padding: const EdgeInsets.all(16),
          itemCount: ForexPairsEnum.values.length,
          itemBuilder: (context, index) {
            return CupertinoButton(
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
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 40,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                              child: ColoredBox(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                              child: ColoredBox(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 16),
                    Text('value', style: TextStyle(color: textColor)),
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
        middle: Text(
          forexPair.name,
          style: GoogleFonts.poppins(decoration: TextDecoration.none,
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 24,
          ),
        ),
      ),
      child: SafeArea(
        child: InAppWebView(
          initialData:
          InAppWebViewInitialData(data: """<!-- TradingView Widget BEGIN -->
<div class="tradingview-widget-container">
  <div id="tradingview_a4086"></div>
  <div class="tradingview-widget-copyright"><a href="https://www.tradingview.com/" rel="noopener nofollow" target="_blank"><span class="blue-text">Track all markets on TradingView</span></a></div>
  <script type="text/javascript" src="https://s3.tradingview.com/tv.js"></script>
  <script type="text/javascript">
  new TradingView.widget(
  {
  "autosize": true,
  "symbol": "FX:${forexPair.name}",
  "interval": "D",
  "timezone": "Etc/UTC",
  "theme": "light",
  "style": "1",
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
    );
  }
}
