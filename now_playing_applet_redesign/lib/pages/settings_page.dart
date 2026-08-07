import 'package:flutter/material.dart';
import 'package:now_playing_applet_redesign/comp/comp_sub_header.dart';

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
        SizedBox(height: 8.0),

        Text(
          "Settings",
          style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 16.0),

        CompSubHeader(title: "Appearance"),
        CompTileContainer(
          children: [
            CompTile(
              leading: Text("Album art accent color"),
              trailing: CompSwitch(value: true),
            ),
            CompTile(
              leading: Text("Use monospaced font"),
              trailing: CompSwitch(value: false),
            ),
            CompTile(
              leading: Text("Scroll long titles on panel"),
              trailing: CompSwitch(value: false),
            ),
          ],
        ),

        SizedBox(height: 4),
      ],
    );
  }
}
