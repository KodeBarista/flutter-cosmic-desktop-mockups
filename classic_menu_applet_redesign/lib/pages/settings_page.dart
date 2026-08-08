import 'package:flutter/material.dart';

import '../comp/comp_back_row.dart';
import '../comp/comp_page_shell.dart';
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
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: 365,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CompBackRow(),
                SizedBox(height: 20.0),
                Text(
                  "Settings",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 16.0),

                CompSubHeader(title: "Appearance"),
                CompTileContainer(
                  children: [
                    CompTile(
                      leading: Text("Use monochrome logo"),
                      trailing: CompSwitch(value: true),
                    ),
                    CompTile(
                      leading: Text("Show application descriptions"),
                      trailing: CompSwitch(value: true),
                    ),
                  ],
                ),
                SizedBox(height: 16),

                CompSubHeader(title: "Quick actions"),
                CompTileContainer(
                  children: [
                    CompTile(
                      leading: Text("Show documents"),
                      trailing: CompSwitch(value: true),
                    ),
                    CompTile(
                      leading: Text("Show downloads"),
                      trailing: CompSwitch(value: true),
                    ),
                    CompTile(
                      leading: Text("Show home"),
                      trailing: CompSwitch(value: true),
                    ),
                    CompTile(
                      leading: Text("Show settings"),
                      trailing: CompSwitch(value: true),
                    ),
                    CompTile(
                      leading: Text("Show power"),
                      trailing: CompSwitch(value: true),
                    ),
                  ],
                ),

                SizedBox(height: 8),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
