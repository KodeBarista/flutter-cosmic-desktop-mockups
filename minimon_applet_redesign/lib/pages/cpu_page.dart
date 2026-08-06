import 'package:flutter/material.dart';

import '../comp/comp_back_row.dart';
import '../comp/comp_drop_down.dart';
import '../comp/comp_page_shell.dart';
import '../comp/comp_pick_color.dart';
import '../comp/comp_spinner.dart';
import '../comp/comp_switch.dart';
import '../comp/comp_tab_bar.dart';
import '../comp/comp_tile.dart';
import '../comp/comp_tile_container.dart';
import '../widgets/header_chart_row.dart';

enum ChartType { load, temperature }

class CpuPage extends StatelessWidget {
  const CpuPage({super.key});

  @override
  Widget build(BuildContext context) {
    final chartType = ChartType.load;
    late Color color;
    late int index;
    late double statValue;
    late String statSuffix;

    switch (chartType) {
      case ChartType.load:
        {
          color = Colors.red;
          index = 0;
          statValue = 12.3;
          statSuffix = "%";
        }
      case ChartType.temperature:
        {
          color = Colors.orange;
          index = 1;
          statValue = 52;
          statSuffix = "°C";
        }
    }

    return CompPageShell(
      children: [
        CompBackRow(),
        SizedBox(height: 20.0),

        HeaderChartRow(
          label: "CPU",
          stats: Text("$statValue$statSuffix"),
          chartValue: statValue,
          chartColor: color,
        ),
        SizedBox(height: 8.0),

        Text("Chart type"),
        SizedBox(height: 8),
        CompTabBar(
          items: [Text("Load"), Text("Temperature")],
          selectedIndex: index,
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

            if (chartType == ChartType.temperature)
              CompTile(
                leading: Text("Minimum temperature"),
                trailing: CompSpinner(value: 0),
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
