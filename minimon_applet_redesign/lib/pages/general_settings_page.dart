import 'package:flutter/material.dart';

import '../comp/comp_back_row.dart';
import '../comp/comp_drop_down.dart';
import '../comp/comp_page_shell.dart';
import '../comp/comp_spinner.dart';
import '../comp/comp_switch.dart';
import '../comp/comp_tile.dart';
import '../comp/comp_tile_container.dart';
import '../widgets/order_tile.dart';

class GeneralSettingsPage extends StatelessWidget {
  const GeneralSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CompPageShell(
      children: [
        CompBackRow(),
        SizedBox(height: 20.0),

        Text(
          "General settings",
          style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 16.0),

        CompTileContainer(
          children: [
            CompTile(
              leading: Text("Refresh rate (seconds)"),
              trailing: CompSpinner(value: 1),
            ),
            CompTile(
              leading: Text("Value size"),
              trailing: CompSpinner(value: 11),
            ),
            CompTile(
              leading: Text("Monospace font for values"),
              trailing: CompSwitch(value: true),
            ),
            CompTile(
              leading: Text("Panel spacing"),
              trailing: CompSpinner(value: 3),
            ),
            CompTile(
              leading: Text("Temperature unit"),
              trailing: CompDropDown(label: "Celsius"),
            ),
            CompTile(
              leading: Text("System monitor"),
              trailing: CompDropDown(label: "COSMIC System Monitor"),
            ),
          ],
        ),
        SizedBox(height: 20),

        Text("Content order"),
        SizedBox(height: 8),
        Column(
          spacing: 8,
          children: [
            OrderTile(label: 'CPU'),
            OrderTile(label: 'CPU temperature'),
            OrderTile(label: 'Memory'),
            OrderTile(label: 'Network'),
            OrderTile(label: 'Disk'),
            OrderTile(label: 'GPU'),
          ],
        ),
      ],
    );
  }
}
