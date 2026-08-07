import 'package:flutter/material.dart';

import '../comp/comp_back_row.dart';
import '../comp/comp_page_shell.dart';
import '../comp/comp_parent_tile.dart';
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
        SizedBox(height: 20),

        Text(
          "Settings",
          style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 16.0),

        CompSubHeader(title: "Duration (in minutes)"),
        CompTileContainer(
          children: [
            CompTile(
              leading: Text("Work time"),
              trailing: CompSpinner(value: 25),
            ),
            CompTile(
              leading: Text("Short break time"),
              trailing: CompSpinner(value: 5),
            ),
            CompTile(
              leading: Text("Long break time"),
              trailing: CompSpinner(value: 15),
            ),
          ],
        ),
        SizedBox(height: 16),

        CompSubHeader(title: "Behavior"),
        CompTileContainer(
          children: [
            CompTile(
              leading: Text("Long break interval"),
              trailing: CompSpinner(value: 4),
            ),
            CompTile(
              leading: Text("Auto start work timer"),
              trailing: CompSwitch(value: true),
            ),
            CompTile(
              leading: Text("Auto start break timer"),
              trailing: CompSwitch(value: false),
            ),
          ],
        ),
        SizedBox(height: 12),
        CompParentTile(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 12, vertical: 8),
          child: Text("Reset to default"),
        ),

        SizedBox(height: 4),
      ],
    );
  }
}
