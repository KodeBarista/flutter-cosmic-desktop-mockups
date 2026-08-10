import 'package:flutter/material.dart';

import '../comp/comp_back_row.dart';
import '../comp/comp_drop_down.dart';
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
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 16.0),

                CompSubHeader(title: "Behavior"),
                CompTileContainer(
                  children: [
                    CompTile(
                      leading: Text("Copy on selection"),
                      trailing: CompSwitch(value: true),
                    ),
                    CompTile(
                      leading: Text("Default color format"),
                      trailing: CompDropDown(label: "HEX"),
                    ),
                  ],
                ),
                SizedBox(height: 16),

                CompSubHeader(title: "Color formats"),
                CompTileContainer(
                  children: [
                    CompTile(
                      leading: Text("HEX"),
                      trailing: CompSwitch(value: true),
                    ),
                    CompTile(
                      leading: Text("RGB"),
                      trailing: CompSwitch(value: true),
                    ),
                    CompTile(
                      leading: Text("HSL"),
                      trailing: CompSwitch(value: true),
                    ),
                    CompTile(
                      leading: Text("HSV"),
                      trailing: CompSwitch(value: false),
                    ),
                    CompTile(
                      leading: Text("CMYK"),
                      trailing: CompSwitch(value: false),
                    ),
                    CompTile(
                      leading: Text("LAB"),
                      trailing: CompSwitch(value: false),
                    ),
                  ],
                ),
                SizedBox(height: 4),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
