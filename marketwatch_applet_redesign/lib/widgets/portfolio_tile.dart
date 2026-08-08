import 'package:flutter/material.dart';

import '../comp/comp_draw_svg.dart';
import '../constants.dart';
import '../helper/nav_helper.dart';
import '../pages/asset_page.dart';

class PortfolioTile extends StatelessWidget {
  const PortfolioTile({
    super.key,
    required this.iconName,
    required this.name,
    required this.stockSymbol,
    required this.amount,
    required this.percent,
  });

  final String iconName;
  final String name;
  final String stockSymbol;
  final double amount;
  final double percent;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => NavHelper.openPage(
          context,
          AssetPage(
            iconName: iconName,
            name: name,
            stockSymbol: stockSymbol,
            amount: amount,
            percent: percent,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 40,
                    child: CompDrawSvg(iconName: iconName, size: 40),
                  ),
                  SizedBox(width: 12),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 6,
                    children: [
                      Text(name, style: TextStyle(color: kAccentColor)),
                      Row(
                        spacing: 40,
                        children: [
                          Text("\$ $amount"),
                          percent > 0
                              ? Text(
                                  "+$percent%",
                                  style: TextStyle(color: Colors.greenAccent),
                                )
                              : Text(
                                  "-${percent.abs()}%",
                                  style: TextStyle(color: Colors.redAccent),
                                ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  CompDrawSvg(iconName: "settings", size: 18),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
