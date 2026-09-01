import 'package:flutter/material.dart';

import '../comp/comp_back_row.dart';
import '../comp/comp_divider.dart';
import '../comp/comp_page_shell.dart';
import '../comp/comp_spinner.dart';
import '../comp/comp_sub_header.dart';
import '../comp/comp_switch.dart';
import '../comp/comp_tile.dart';
import '../comp/comp_tile_container.dart';
import '../constants.dart';
import '../widgets/color_box_row.dart';
import '../widgets/order_tile.dart';

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
                  style: kTextStyle.copyWith(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 16.0),

                CompSubHeader(title: "Panel"),
                CompTileContainer(
                  children: [
                    CompTile(
                      leading: Text("Show battery", style: kTextStyle),
                      trailing: CompSwitch(value: true),
                    ),
                    CompTile(
                      leading: Text("Show brightness", style: kTextStyle),
                      trailing: CompSwitch(value: false),
                    ),
                    CompTile(
                      leading: Text("Text size", style: kTextStyle),
                      trailing: CompSpinner(value: 10),
                    ),
                    CompTile(
                      leading: Text("ASCII blocks", style: kTextStyle),
                      trailing: CompSpinner(value: 10),
                    ),
                    CompTile(
                      leading: Text("Spacing", style: kTextStyle),
                      trailing: CompSpinner(value: 8),
                    ),
                  ],
                ),
                SizedBox(height: 16),

                CompSubHeader(title: "Appearance"),
                CompTileContainer(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 16,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Use monospace font", style: kTextStyle),
                              CompSwitch(value: true),
                            ],
                          ),
                          SizedBox(height: 16),
                          CompDivider(),
                          SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Use system accent", style: kTextStyle),
                              CompSwitch(value: false),
                            ],
                          ),
                          SizedBox(height: 16),
                          CompDivider(),
                          SizedBox(height: 16),
                          ColorBoxRow(),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),

                CompSubHeader(title: "Content order"),
                Column(
                  spacing: 8,
                  children: [
                    OrderTile(label: 'Battery'),
                    OrderTile(label: 'Brightness'),
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
