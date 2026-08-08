import 'package:flutter/material.dart';

import '../comp/comp_back_row.dart';
import '../comp/comp_draw_svg.dart';
import '../comp/comp_drop_down.dart';
import '../comp/comp_page_shell.dart';
import '../comp/comp_parent_tile.dart';
import '../comp/comp_spinner.dart';
import '../comp/comp_sub_header.dart';
import '../comp/comp_switch.dart';
import '../comp/comp_tile.dart';
import '../comp/comp_tile_container.dart';
import '../constants.dart';
import '../widgets/alert_tile.dart';

class AssetPage extends StatelessWidget {
  const AssetPage({
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
    return CompPageShell(
      children: [
        CompBackRow(),
        SizedBox(height: 20),

        Row(
          children: [
            SizedBox(
              width: 40,
              child: CompDrawSvg(iconName: iconName, size: 40),
            ),
            SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 2),
                Text("Updated just now", style: TextStyle(fontSize: 12)),
              ],
            ),
            Spacer(),
            CompDrawSvg(iconName: "refresh", size: 18),
            SizedBox(width: 20),
            CompDrawSvg(iconName: "delete", size: 18),
          ],
        ),
        SizedBox(height: 16),

        CompParentTile(
          padding: EdgeInsets.all(16),
          child: Row(
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
        ),
        SizedBox(height: 16),

        CompSubHeader(title: "Alert"),
        CompTileContainer(
          children: [
            CompTile(
              leading: Text("Enable alert"),
              trailing: CompSwitch(value: true),
            ),
            CompTile(
              leading: Text("Enable system notifications"),
              trailing: CompSwitch(value: true),
            ),
            CompTile(
              leading: Text("Condition"),
              trailing: CompDropDown(label: "Price above"),
            ),
            CompTile(
              leading: Text("Value (\$)"),
              trailing: CompSpinner(value: 200),
            ),
          ],
        ),
        SizedBox(height: 8),

        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: kBorderRadius,
                color: kAccentColor,
              ),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              child: Text(
                "Create alert",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 8),

        CompSubHeader(title: "Alerts"),
        if (percent > 0) AlertTile(condition: "Price > ${amount + 30}"),
        if (percent < 0) AlertTile(condition: "Turns positive"),
        SizedBox(height: 4),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            "Note: Values are displayed in the local currency of the respective market.",
            style: TextStyle(fontSize: 13),
          ),
        ),
      ],
    );
  }
}
