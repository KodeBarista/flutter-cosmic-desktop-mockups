import 'package:flutter/material.dart';

import '../comp/comp_page_shell.dart';
import '../comp/comp_parent_tile.dart';
import '../comp/comp_segmented_button.dart';
import '../comp/comp_sub_header.dart';
import '../comp/comp_tile.dart';
import '../comp/comp_tile_container.dart';
import '../constants.dart';
import '../widgets/battery_art.dart';
import '../widgets/top_row.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isCharging = true;
    final int percent = 66;
    final bool isCustomColor = true;
    // final Color? customColor = isCustomColor ? kAccentColor : null;
    // final Color? customColor = isCustomColor ? Color(0xFFC45EF6) : null;
    final Color? customColor = isCustomColor ? Color(0xFF8FADD7) : null;
    // final Color? customColor = isCustomColor ? Color(0xFF78DC78) : null;
    final icon = batteryIcon(percent, isCharging);
    final state = isCharging
        ? "$percent% ∙ Charging"
        : "$percent% ∙ Discharging";
    final eta = isCharging ? "43m until full" : "6hr 27m until empty";

    return CompPageShell(
      children: [
        TopRow(),
        SizedBox(height: 16),

        CompSubHeader(title: "Profile"),
        CompParentTile(
          child: CompSegmentedButton(
            items: [
              Text("Battery", style: kTextStyle),
              Text("Balanced", style: kTextStyle),
              Text("Performance", style: kTextStyle),
            ],
            selectedIndex: 1,
          ),
        ),
        SizedBox(height: 16),

        CompSubHeader(title: "Brightness"),
        CompParentTile(
          child: CompTile(
            leading: Row(
              children: [
                Text("☼", style: kTextStyle.copyWith(fontSize: 20)),
                SizedBox(width: 12),
                Text("28%", style: kTextStyle),
                SizedBox(width: 8),
                Text(
                  "███████░░░░░░░░░░░░░░░░░░",
                  style: kTextStyle.copyWith(
                    color: customColor,
                    fontFamily: "Jetbrains mono",
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 16),

        CompSubHeader(title: "System theme"),
        CompParentTile(
          child: CompTile(
            leading: Text("Dark mode", style: kTextStyle),
            trailing: Text(
              "░░██",
              // "☑",
              // "[███░░]",
              style: kTextStyle.copyWith(
                color: customColor,
                fontFamily: "Jetbrains mono",
                fontSize: 20,
              ),
            ),
          ),
        ),
        SizedBox(height: 16),

        CompSubHeader(title: "Battery"),
        CompParentTile(
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              children: [
                Text(
                  icon,
                  style: kTextStyle.copyWith(
                    color: customColor,
                    fontFamily: "Jetbrains mono",
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: CompTileContainer(
                    hideColor: true,
                    children: [
                      PaddedValue(
                        text: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 4,
                          children: [
                            Text(
                              state,
                              style: kTextStyle.copyWith(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              eta,
                              style: kTextStyle.copyWith(color: Colors.white70),
                            ),
                          ],
                        ),
                      ),
                      PaddedValue(
                        text: Text(
                          "Capacity: 35.7 Wh/58.8 Wh",
                          style: kTextStyle,
                        ),
                      ),
                      PaddedValue(
                        text: Text("Health: 60.7%", style: kTextStyle),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 4),
      ],
    );
  }
}

class PaddedValue extends StatelessWidget {
  const PaddedValue({super.key, required this.text});

  final Widget text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 12, vertical: 12),
      child: text,
    );
  }
}
