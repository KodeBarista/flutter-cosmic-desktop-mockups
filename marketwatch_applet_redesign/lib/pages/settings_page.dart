import 'package:flutter/material.dart';

import '../comp/comp_back_row.dart';
import '../comp/comp_page_shell.dart';
import '../comp/comp_spinner.dart';
import '../comp/comp_sub_header.dart';
import '../comp/comp_switch.dart';
import '../comp/comp_tile.dart';
import '../comp/comp_tile_container.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CompPageShell(
      children: [
        CompBackRow(),
        SizedBox(height: 20.0),

        Text(
          "Settings",
          style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 16.0),

        CompSubHeader(title: "Panel"),
        CompTileContainer(
          children: [
            CompTile(
              leading: Text("Show icon only"),
              trailing: CompSwitch(value: true),
            ),
            CompTile(
              leading: Text("Show logos in screeners"),
              trailing: CompSwitch(value: true),
            ),
            CompTile(
              leading: Text("Disable custom alerts"),
              trailing: CompSwitch(value: false),
            ),
          ],
        ),
        SizedBox(height: 16),

        CompSubHeader(title: "Other"),
        CompTileContainer(
          children: [
            CompTile(
              leading: Text("Display stock icon"),
              trailing: CompSwitch(value: true),
            ),
            CompTile(
              leading: Text("Display news"),
              trailing: CompSwitch(value: true),
            ),
            CompTile(
              leading: Text("News per asset"),
              trailing: CompSpinner(value: 1),
            ),
            CompTile(
              leading: Text("Stock rotation interval (sec)"),
              trailing: CompSpinner(value: 20),
            ),
            CompTile(
              leading: Text("Refresh interval (min)"),
              trailing: CompSpinner(value: 15),
            ),
          ],
        ),
      ],
    );
  }
}
