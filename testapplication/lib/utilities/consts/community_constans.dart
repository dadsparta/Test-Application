import '../models/community_model.dart';

class CommunityConstants {
  static const List<CommunityModel> communities = [
    CommunityModel(
      title: "Day Trading",
      description:
      "Day traders aim to profit from short-term price movements within a single trading day. They make multiple trades throughout the day and often use technical analysis to identify entry and exit points. Challenges include: high-pressure environment with quick decision-making,Constant monitoring of the markets, leading to stress and burnout, Transaction costs can eat into profits due to frequent trading.",
      difficulty: 3,
    ),
    CommunityModel(
      title: "Swing Trading",
      description:
      "Swing traders hold positions for several days to weeks, aiming to capture larger price movements. They rely on technical and fundamental analysis to identify potential trends. Challenges include: balancing patience with timing, as swing trades require waiting for the right entry and exit points, holding positions overnight exposes traders to overnight risk, such as market gaps.",
      difficulty: 2,
    ),
    CommunityModel(
      title: "Trend Following",
      description:
      "Trend followers identify and ride established market trends. They use technical indicators to confirm trends and determine entry and exit points. Challenges include: false signals and whipsaws can lead to losses if trends reverse unexpectedly, missed opportunities during sideways or range-bound markets.",
      difficulty: 2,
    ),
    CommunityModel(
      title: "Arbitrage",
      description:
      """Arbitrageurs exploit price discrepancies of the same asset across different markets or exchanges. They buy low in one market and sell high in another to lock in risk-free profits. Challenges include:

- Fast execution is crucial, as price discrepancies can close rapidly.
- Transaction costs and fees can reduce or eliminate potential profits.
- Arbitrage opportunities are becoming scarcer due to advanced trading technology.""",
      difficulty: 3,
    ),
    CommunityModel(
      title: "Algorithmic Trading",
      description:
      """Algorithmic traders use computer programs to execute trades based on predefined rules and strategies. Challenges include:

- Developing and maintaining effective algorithms requires programming skills and constant refinement.
- Technical glitches or "flash crashes" can lead to significant losses.
- Over-optimization can result in algorithms that perform well historically but fail in real-time markets.""",
      difficulty: 4,
    ),
    CommunityModel(
      title: "Mean Reversion",
      description:
      """Mean reversion traders assume that prices will revert to their historical average over time. They look for overbought or oversold conditions to enter trades. Challenges include:

- Identifying the true mean in volatile markets can be difficult.
- Prices can stay in overbought or oversold territories for extended periods.""",
      difficulty: 3,
    ),
    CommunityModel(
      title: "Scalping",
      description:
      """Scalpers make numerous quick trades to profit from small price movements. They aim to capture tiny price differentials. Challenges include:

- High-frequency trading requires advanced technology and low-latency connections.
- Transaction costs can significantly impact profitability.
- Scalping can be stressful and emotionally taxing.""",
      difficulty: 3,
    ),
    CommunityModel(
      title: "Options Trading",
      description:
      """Options traders use contracts that give them the right (but not the obligation) to buy or sell an asset at a predetermined price. Challenges include:

- Complex strategies and the need to understand various options strategies.
- Limited time to expiry for options contracts.
- High leverage can lead to significant losses if the market moves against the trader.""",
      difficulty: 2,
    ),
  ];
}