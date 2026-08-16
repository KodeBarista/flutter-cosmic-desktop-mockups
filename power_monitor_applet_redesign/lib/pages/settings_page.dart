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

                CompSubHeader(title: "Alerts"),
                CompTileContainer(
                  children: [
                    CompTile(
                      leading: Text("Notification"),
                      trailing: CompSwitch(value: true),
                    ),
                    CompTile(
                      leading: Text("Battery charging limit"),
                      trailing: CompSpinner(value: 80),
                    ),
                    CompTile(
                      leading: Text("Battery discharge limit"),
                      trailing: CompSpinner(value: 30),
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
