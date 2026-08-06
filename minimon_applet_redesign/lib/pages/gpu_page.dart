import 'package:flutter/material.dart';

import '../comp/comp_back_row.dart';
import '../comp/comp_drop_down.dart';
import '../comp/comp_page_shell.dart';
import '../comp/comp_pick_color.dart';
import '../comp/comp_switch.dart';
import '../comp/comp_tab_bar.dart';
import '../comp/comp_tile.dart';
import '../comp/comp_tile_container.dart';
import '../constants.dart';
import '../widgets/header_chart_row.dart';

enum ChartType { gpuLoad, temperature, vramLoad }

class GpuPage extends StatelessWidget {
  const GpuPage({super.key});

  @override
  Widget build(BuildContext context) {
    final chartType = ChartType.gpuLoad;
    late Color color;
    late int index;
    late double statValue;
    late String statSuffix;

    switch (chartType) {
      case ChartType.gpuLoad:
        {
          color = Colors.yellow;
          index = 0;
          statValue = 82;
          statSuffix = "%";
        }
      case ChartType.temperature:
        {
          color = Colors.redAccent;
          index = 1;
          statValue = 59;
          statSuffix = "°C";
        }
      case ChartType.vramLoad:
        {
          color = Colors.purpleAccent;
          index = 2;
          statValue = 47;
          statSuffix = "%";
        }
    }

    return CompPageShell(
      children: [
        CompBackRow(),
        SizedBox(height: 20.0),

        HeaderChartRow(
          label: "GPU",
          stats: Text("$statValue$statSuffix"),
          chartValue: statValue,
          chartColor: color,
        ),
        SizedBox(height: 8.0),

        Text("Chart type"),
        SizedBox(height: 8),
        CompTabBar(
          items: [Text("GPU Load"), Text("Temperature"), Text("VRAM Load")],
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
              dynamicSize: true,
              leading: SizedBox(
                width: 230,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Power saving mode"),
                    Text(
                      "Disable monitoring on battery to allow GPU to sleep if possible",
                      style: kSubtitleStyle,
                      maxLines: 2,
                    ),
                  ],
                ),
              ),
              trailing: CompSwitch(value: true),
            ),
          ],
        ),
      ],
    );
  }
}
