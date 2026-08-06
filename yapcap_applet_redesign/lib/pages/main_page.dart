import 'package:flutter/material.dart';

import '../comp/comp_draw_svg.dart';
import '../comp/comp_page_shell.dart';
import '../comp/comp_tab_bar.dart';
import '../widgets/top_row.dart';
import 'claude_page.dart';
import 'codex_page.dart';
import 'copilot_page.dart';
import 'cursor_page.dart';
import 'gemini_page.dart';
import 'minimax_page.dart';

final pages = [
  ClaudePage(),
  CodexPage(),
  CopilotPage(),
  CursorPage(),
  GeminiPage(),
  MinimaxPage(),
];

final icons = ["claude", "codex", "copilot", "cursor", "gemini", "minimax"];
// final icons = ["claude", "codex", "copilot", "minimax"];

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final currentIndex = 0;

    return CompPageShell(
      children: [
        TopRow(),
        SizedBox(height: 16),

        CompTabBar(
          items: [
            for (final icon in icons)
              CompDrawSvg(iconName: "$icon-m", monochrome: true, size: 30),
          ],
          selectedIndex: currentIndex,
        ),
        SizedBox(height: 16),

        Container(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: pages[currentIndex],
        ),
      ],
    );
  }
}
