import 'package:flutter/material.dart';

import '../comp/comp_back_row.dart';
import '../comp/comp_page_shell.dart';
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

        CompTileContainer(
          children: [
            CompTile(
              leading: Text("Enable Do Not Disturb"),
              trailing: CompSwitch(value: true),
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
        SizedBox(height: 4),
      ],
    );
  }
}
