import 'package:flutter/material.dart';
import 'package:ollama_applet_redesign/widgets/accent_button.dart';
import 'package:ollama_applet_redesign/widgets/history_item.dart';

import '../comp/comp_back_row.dart';
import '../comp/comp_page_shell.dart';
import '../comp/comp_sub_header.dart';
import '../comp/comp_switch.dart';
import '../comp/comp_tile.dart';
import '../comp/comp_tile_container.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CompPageShell(
      height: 817,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CompBackRow(),
                SizedBox(height: 20.0),
                Text(
                  "History",
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 16.0),
          
                CompTileContainer(
                  children: [
                    CompTile(
                      leading: Text("Keep context"),
                      trailing: CompSwitch(value: true),
                    ),
                    CompTile(
                      leading: Text("Clear all conversations"),
                      trailing: AccentButton(
                        label: "Delete...",
                        color: Color(0xFFFFA09A),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
          
                CompSubHeader(title: "Conversations"),
                CompTileContainer(
                  children: [
                    HistoryItem(
                      isActive: true,
                      title: "Understanding Rust Lifetimes",
                      date: "18 Sep, 2026",
                    ),
                    HistoryItem(
                      isActive: false,
                      title: "ext-background-effect-v1",
                      date: "18 Sep, 2026",
                    ),
                    HistoryItem(
                      isActive: false,
                      title: "Use GPU version format",
                      date: "17 Sep, 2026",
                    ),
                    HistoryItem(
                      isActive: false,
                      title: "Review bash prompt code",
                      date: "17 Sep, 2026",
                    ),
                    HistoryItem(
                      isActive: false,
                      title: "Static vs Dynamic Memory",
                      date: "17 Sep, 2026",
                    ),
                    HistoryItem(
                      isActive: false,
                      title: "What’s the difference between TCP and UDP?",
                      date: "16 Sep, 2026",
                    ),HistoryItem(
                      isActive: false,
                      title: "Estimate Panther Lake Compile Time",
                      date: "16 Sep, 2026",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
