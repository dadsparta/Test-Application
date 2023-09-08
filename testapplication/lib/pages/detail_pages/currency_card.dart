import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import '../../utilities/Enums/forex_pairs_enum.dart';
import '../../utilities/consts/app_colors.dart';

class CurrencyCardDetail extends StatelessWidget {
  final ForexPairsEnum forexPair;
  const CurrencyCardDetail({
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
            style: const TextStyle(color: textColor)
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
  <div class="tradingview-widget-copyright"><a href="https://www.tradingview.com/" rel="noopener nofollow" target="_blank"><span class="blue-text">more information</span></a></div>
  <script type="text/javascript" src="https://s3.tradingview.com/tv.js"></script>
  <script type="text/javascript">
  new TradingView.widget(
  {
  "autosize": true,
  "symbol": "FX:${forexPair.name}",
  "interval": "D",
  "timezone": "Etc/UTC",
  "theme": "dark",
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
      ),
    );
  }
}