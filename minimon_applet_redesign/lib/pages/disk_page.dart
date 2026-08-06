import 'package:flutter/material.dart';

import '../comp/comp_back_row.dart';
import '../comp/comp_drop_down.dart';
import '../comp/comp_page_shell.dart';
import '../comp/comp_pick_color.dart';
import '../comp/comp_switch.dart';
import '../comp/comp_tab_bar.dart';
import '../comp/comp_tile.dart';
import '../comp/comp_tile_container.dart';
import '../widgets/header_chart_row.dart';

class DiskPage extends StatelessWidget {
  const DiskPage({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Colors.purple;

    return CompPageShell(
      children: [
        CompBackRow(),
        SizedBox(height: 20.0),

        HeaderChartRow(
          label: "Disk",
          stats: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("W 0.0 B/s", style: TextStyle(fontWeight: FontWeight.w300)),
              SizedBox(height: 4.0),
              Text(
                "R 31.8 MB/s",
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
            ],
          ),
          chartValue: 31.8,
          chartColor: color,
        ),
        SizedBox(height: 8.0),

        Text("Chart type"),
        SizedBox(height: 8),
        CompTabBar(
          items: [Text("KINGSTON - 238.5 GB"), Text("ST1000L...- 931.5 GB")],
          selectedIndex: 0,
        ),
        SizedBox(height: 12),

        CompTileContainer(
          children: [
            CompTile(
              leading: Text("Show chart"),
              trailing: CompSwitch(value: true),
            ),
            CompTile(leading: Text("Show value"), trailing: CompSwitch()),
            CompTile(leading: Text("Show label"), trailing: CompSwitch()),
            CompTile(leading: Text("Show icon"), trailing: CompSwitch()),
            CompTile(
              leading: Text("Chart type"),
              trailing: CompDropDown(label: "Line"),
            ),
            CompPickColor(color: color),
          ],
        ),
        SizedBox(height: 16),

        CompTileContainer(
          children: [
            CompTile(
              leading: Text("Combine disk write & read"),
              trailing: CompSwitch(),
            ),
          ],
        ),
      ],
    );
  }
}
