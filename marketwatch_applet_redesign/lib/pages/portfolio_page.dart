import 'package:flutter/material.dart';

import '../comp/comp_back_row.dart';
import '../comp/comp_draw_svg.dart';
import '../comp/comp_page_shell.dart';
import '../comp/comp_parent_tile.dart';
import '../comp/comp_tile_container.dart';
import '../constants.dart';
import '../widgets/portfolio_tile.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CompPageShell(
      children: [
        CompBackRow(),
        SizedBox(height: 20),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "My Portfolio",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text("Updated just now", style: TextStyle(fontSize: 12)),
                  ],
                ),
                Spacer(),
                CompDrawSvg(iconName: "add", size: 18),
                SizedBox(width: 20),
                CompDrawSvg(iconName: "refresh", size: 18),
              ],
            ),
            SizedBox(height: 16),

            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: kAccentColor.withAlpha(120),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: CompParentTile(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text("Search by name or symbol"),
              ),
            ),
            SizedBox(height: 16),

            Row(
              spacing: 8,
              children: [
                Text("Core holdings", style: TextStyle(fontSize: 16)),
                CompDrawSvg(iconName: "edit"),
                Spacer(),
                CompDrawSvg(iconName: "left"),
                Text("1/2", style: TextStyle(fontSize: 16)),
                CompDrawSvg(iconName: "right"),
              ],
            ),

            SizedBox(height: 16),

            CompTileContainer(
              children: [
                PortfolioTile(
                  iconName: "atlassian",
                  name: "Atlassian",
                  stockSymbol: "TEAM",
                  amount: 151.27,
                  percent: 37.31,
                ),
                PortfolioTile(
                  iconName: "nvidia",
                  name: "Nvidia",
                  stockSymbol: "NVDA",
                  amount: 221.94,
                  percent: 1.35,
                ),
                PortfolioTile(
                  iconName: "microsoft",
                  name: "Microsoft Corp",
                  stockSymbol: "MSFT",
                  amount: 499.39,
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
