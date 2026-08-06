import 'package:flutter/material.dart';

import '../comp/comp_back_row.dart';
import '../comp/comp_divider.dart';
import '../comp/comp_draw_svg.dart';
import '../comp/comp_page_shell.dart';
import '../comp/comp_segmented_button.dart';
import '../comp/comp_sub_header.dart';
import '../comp/comp_tile_container.dart';
import '../constants.dart';

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
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
        ),
        SizedBox(height: 12.0),

        CompSubHeader(title: "Refresh interval (in minutes)"),
        CompTileContainer(
          children: [
            CompSegmentedButton(
              items: [Text("1"), Text("5"), Text("10"), Text("15"), Text("30")],
              selectedIndex: 0,
            ),
          ],
        ),
        SizedBox(height: 16),

        CompSubHeader(title: "Panel icon"),
        CompTileContainer(
          children: [
            CompSegmentedButton(
              items: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        CompDrawSvg(iconName: "claude"),
                        SizedBox(width: 8.0),
                        UsagePanelIndicator(),
                      ],
                    ),
                  ],
                ),
                UsagePanelIndicator(),
                Text("8%"),
                Row(
                  children: [
                    CompDrawSvg(iconName: "claude"),
                    SizedBox(width: 8),
                    Text("8%"),
                  ],
                ),
              ],
              selectedIndex: 3,
            ),
          ],
        ),
        SizedBox(height: 16),

        CompSubHeader(title: "Reset time"),
        CompTileContainer(
          children: [
            CompSegmentedButton(
              items: [
                Text("Relative",),
                Text("Absolute",),
              ],
              selectedIndex: 0,
            ),
            CompDivider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Resets in 4hr 0m"),
            ),
          ],
        ),
        SizedBox(height: 16),

        CompSubHeader(title: "Usage amount"),
        CompTileContainer(
          children: [
            CompSegmentedButton(
              items: [Text("Used"), Text("Left")],
              selectedIndex: 0,
            ),
          ],
        ),
        SizedBox(height: 4),
      ],
    );
  }
}

class UsagePanelIndicator extends StatelessWidget {
  const UsagePanelIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LinearProgressIndicator(value: 0.8, color: kAccentColor),
          SizedBox(height: 8.0),
          LinearProgressIndicator(value: 0.2, color: kAccentColor),
        ],
      ),
    );
  }
}
