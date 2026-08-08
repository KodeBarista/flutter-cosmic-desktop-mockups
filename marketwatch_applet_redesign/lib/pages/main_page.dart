import 'package:flutter/material.dart';

import '../comp/comp_draw_svg.dart';
import '../comp/comp_page_shell.dart';
import '../comp/comp_tab_bar.dart';
import '../comp/comp_tile_container.dart';
import '../widgets/asset_tile.dart';
import '../widgets/top_row.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CompPageShell(
      children: [
        TopRow(),
        SizedBox(height: 16),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "US Market Overview",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text("Updated 2m ago", style: TextStyle(fontSize: 12)),
                  ],
                ),
                CompDrawSvg(iconName: "refresh", size: 18),
              ],
            ),
            SizedBox(height: 16),

            CompTabBar(
              items: [Text("Active"), Text("Gainers"), Text("Losers")],
              selectedIndex: 0,
            ),
            SizedBox(height: 8),

            CompTileContainer(
              children: [
                AssetTile(
                  iconName: "atlassian",
                  name: "Atlassian",
                  id: "TEAM",
                  amount: "151.27",
                  percent: 37.31,
                ),
                AssetTile(
                  iconName: "twilio",
                  name: "Twilio",
                  id: "TWLO",
                  amount: "240.81",
                  percent: 24.64,
                ),
                AssetTile(
                  iconName: "cloudflare",
                  name: "Cloudflare",
                  id: "NET",
                  amount: "297.40",
                  percent: 4.56,
                ),
                AssetTile(
                  iconName: "intel",
                  name: "Intel",
                  id: "INTC",
                  amount: "101.24",
                  percent: 1.43,
                ),
                AssetTile(
                  iconName: "nvidia",
                  name: "Nvidia",
                  id: "NVDA",
                  amount: "221.94",
                  percent: 1.35,
                ),
                AssetTile(
                  iconName: "american-airlines",
                  name: "American Airlines",
                  id: "AAL",
                  amount: "15.94",
                  percent: -0.54,
                ),
                AssetTile(
                  iconName: "microsoft",
                  name: "Microsoft Corp",
                  id: "MSFT",
                  amount: "499.39",
                  percent: -0.09,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
