import 'package:flutter/material.dart';

import '../comp/comp_back_row.dart';
import '../comp/comp_draw_svg.dart';
import '../comp/comp_drop_down.dart';
import '../comp/comp_page_shell.dart';
import '../comp/comp_spinner.dart';
import '../comp/comp_sub_header.dart';
import '../comp/comp_tile.dart';
import '../comp/comp_tile_container.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CompPageShell(
      height: 817,
      children: [
        Align(
          alignment: Alignment.center,
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

              CompTileContainer(
                children: [
                  CompTile(
                    leading: Text("Set avatar"),
                    trailing: CompDropDown(label: "Avatar"),
                  ),
                  CompTile(
                    leading: Text(
                      "Refresh interval for system stats (seconds)",
                    ),
                    trailing: CompSpinner(value: 5),
                  ),
                  CompTile(
                    leading: Text("Conversation font size"),
                    trailing: CompSpinner(value: 14),
                  ),
                ],
              ),
              SizedBox(height: 16),

              Text(
                "Models",
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 8.0),

              CompSubHeader(title: "Download models"),
              CompTileContainer(
                children: [
                  CompTile(
                    leading: SizedBox(
                      width: 200,
                      child: Row(
                        children: [
                          Text("qwen2.5-coder:7b"),
                          SizedBox(width: 50),
                          CompDrawSvg(iconName: "down"),
                        ],
                      ),
                    ),
                    // trailing: CompDrawSvg(iconName: "download"),
                    trailing: Expanded(
                      child: Row(
                        children: [
                          Spacer(),
                          Text("37.2%"),
                          SizedBox(width: 18),
                          SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(
                              value: .86,
                              strokeWidth: 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),

              CompSubHeader(title: "Manage models"),

              CompTileContainer(
                children: [
                  CompTile(
                    leading: SizedBox(
                      width: 200,
                      child: Row(
                        children: [
                          Text("codellama:13b"),
                          SizedBox(width: 80),
                          CompDrawSvg(iconName: "down"),
                        ],
                      ),
                    ),
                    trailing: CompDrawSvg(iconName: "delete"),
                  ),
                  CompTile(
                    leading: Text("localhost:11434"),
                    trailing: CompDrawSvg(iconName: "edit"),
                  ),
                  CompTile(
                    leading: Text("How long to keep model in memory (minutes)"),
                    trailing: CompSpinner(value: 5),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
