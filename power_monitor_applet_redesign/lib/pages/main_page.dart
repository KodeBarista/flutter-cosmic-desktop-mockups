import 'package:flutter/material.dart';

import '../comp/comp_divider.dart';
import '../comp/comp_draw_svg.dart';
import '../comp/comp_page_shell.dart';
import '../comp/comp_tile.dart';
import '../comp/comp_tile_container.dart';
import '../widgets/top_row.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isCharging = false;
    final icon = isCharging ? "66c" : "78b";
    final state = isCharging ? "66% ∙ Charging" : "78% ∙ Discharging";
    final eta = isCharging ? "19m until full" : "1hr 30m until empty";

    return CompPageShell(
      children: [
        TopRow(),
        SizedBox(height: 16),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            spacing: 12,
            children: [
              CompDrawSvg(iconName: icon, size: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    state,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Text(eta, style: TextStyle(color: Colors.white70)),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 12),

        CompDivider(),
        SizedBox(height: 12),

        isCharging
            ? CompTileContainer(
                children: [
                  CompTile(
                    leading: Text("Charging rate"),
                    trailing: Text("30.5 W"),
                  ),
                  CompTile(
                    leading: Text("Avg charging speed"),
                    trailing: Text("41.3W | 71%/hr"),
                  ),
                  CompTile(
                    leading: Text("Energy remaining"),
                    trailing: Text("32.5 Wh"),
                  ),
                  CompTile(
                    leading: Text("Temperature"),
                    trailing: Text("58 °C"),
                  ),
                ],
              )
            : CompTileContainer(
                children: [
                  CompTile(
                    leading: Text("Discharge rate"),
                    trailing: Text("19.8 W"),
                  ),
                  CompTile(
                    leading: Text("Avg battery usage"),
                    trailing: Text("19.3W | 26%/hr"),
                  ),
                  CompTile(
                    leading: Text("Energy remaining"),
                    trailing: Text("30.8 Wh"),
                  ),
                  CompTile(
                    leading: Text("Temperature"),
                    trailing: Text("46.5 °C"),
                  ),
                ],
              ),
        SizedBox(height: 16),

        CompTileContainer(
          children: [
            CompTile(
              leading: Text("Capacity"),
              trailing: Text("35.7 Wh / 58.8 Wh"),
            ),
            CompTile(leading: Text("Battery health"), trailing: Text("60.8%")),
            CompTile(leading: Text("Cycle count"), trailing: Text("482")),
          ],
        ),
        SizedBox(height: 4),
      ],
    );
  }
}
