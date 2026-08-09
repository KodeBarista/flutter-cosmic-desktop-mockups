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

                CompSubHeader(title: "History"),
                CompTileContainer(
                  children: [
                    CompTile(
                      leading: Text("Pause clipboard"),
                      trailing: CompSwitch(value: false),
                    ),
                    CompTile(
                      leading: Text("Persist history across logins"),
                      trailing: CompSwitch(value: false),
                    ),
                    CompTile(
                      leading: Text("Max clipboard items"),
                      trailing: CompSpinner(value: 200),
                    ),
                    CompTile(
                      leading: Text("Max pinned items"),
                      trailing: CompSpinner(value: 20),
                    ),
                  ],
                ),
                SizedBox(height: 16),

                CompSubHeader(title: "Image"),
                CompTileContainer(
                  children: [
                    CompTile(
                      leading: Text("Show metadata"),
                      trailing: CompSwitch(value: true),
                    ),
                    CompTile(
                      leading: Text("Max size (MB)"),
                      trailing: CompSpinner(value: 8),
                    ),
                    CompTile(
                      leading: Text("Max dimension (px)"),
                      trailing: CompSpinner(value: 8192),
                    ),
                  ],
                ),
                SizedBox(height: 16),

                CompSubHeader(title: "Other"),
                CompTileContainer(
                  children: [
                    CompTile(
                      leading: Text("Option to launch URLs"),
                      trailing: CompSwitch(value: true),
                    ),CompTile(
                      leading: Text("Option to save image"),
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
