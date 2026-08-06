import 'package:flutter/material.dart';

import '../comp/comp_back_row.dart';
import '../comp/comp_drop_down.dart';
import '../comp/comp_page_shell.dart';
import '../comp/comp_pick_color.dart';
import '../comp/comp_switch.dart';
import '../comp/comp_tile.dart';
import '../comp/comp_tile_container.dart';
import '../widgets/header_chart_row.dart';

class NetworkPage extends StatelessWidget {
  const NetworkPage({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Colors.greenAccent;

    return CompPageShell(
      children: [
        CompBackRow(),
        SizedBox(height: 20.0),

        HeaderChartRow(
          label: "Network",
          stats: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "↓ 102.8 KB/s",
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
              SizedBox(height: 4.0),
              Text(
                "↑ 12.5 KB/s",
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
            ],
          ),
          chartValue: 12.5,
          chartColor: color,
        ),
        SizedBox(height: 16),

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
              leading: Text("Show bandwidth in bytes"),
              trailing: CompSwitch(value: true),
            ),
            CompTile(
              leading: Text("Combine download & upload"),
              trailing: CompSwitch(value: true,),
            ),
            CompTile(
              leading: Text("Use adaptive scale"),
              trailing: CompSwitch(),
            ),
          ],
        ),
      ],
    );
  }
}
