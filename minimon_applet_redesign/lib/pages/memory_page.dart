import 'package:flutter/material.dart';

import '../comp/comp_back_row.dart';
import '../comp/comp_drop_down.dart';
import '../comp/comp_page_shell.dart';
import '../comp/comp_pick_color.dart';
import '../comp/comp_switch.dart';
import '../comp/comp_tile.dart';
import '../comp/comp_tile_container.dart';
import '../constants.dart';
import '../widgets/header_chart_row.dart';

class MemoryPage extends StatelessWidget {
  const MemoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Colors.blue;

    return CompPageShell(
      children: [
        CompBackRow(),
        SizedBox(height: 20.0),

        HeaderChartRow(
          label: "Memory",
          stats: Text("9.78 GB"),
          chartValue: 63.4,
          chartColor: color,
        ),
        SizedBox(height: 16.0),

        CompTileContainer(
          children: [
            CompTile(
              leading: Text("Show chart"),
              trailing: CompSwitch(value: true),
            ),
            CompTile(
              dynamicSize: true,
              leading: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Show allocated"),
                  SizedBox(height: 2),
                  Text(
                    "Total minus free\nIncludes system cache & buffer",
                    style: kSubtitleStyle,
                  ),
                ],
              ),
              trailing: CompSwitch(),
            ),
            CompTile(leading: Text("Show value"), trailing: CompSwitch()),
            CompTile(leading: Text("Show label"), trailing: CompSwitch()),
            CompTile(leading: Text("Show icon"), trailing: CompSwitch()),
            CompTile(
              leading: Text("Show as percentage"),
              trailing: CompSwitch(),
            ),

            CompTile(
              leading: Text("Chart type"),
              trailing: CompDropDown(label: "Line"),
            ),
            CompPickColor(color: color),
          ],
        ),
      ],
    );
  }
}
