import 'package:flutter/material.dart';

import '../comp/comp_back_row.dart';
import '../comp/comp_divider.dart';
import '../comp/comp_draw_svg.dart';
import '../comp/comp_page_shell.dart';
import '../comp/comp_switch.dart';
import '../comp/comp_tile.dart';
import '../comp/comp_tile_container.dart';

const models = [
  ("claude-m", "Claude", true),
  ("codex-m", "ChatGPT", true),
  ("copilot-m", "Copilot", true),
  ("cursor-m", "Cursor", false),
  ("deepseek-m", "Deepseek", false),
  ("gemini-m", "Gemini", false),
  ("grok-m", "Grok", false),
  ("minimax-m", "Minimax", true),
  ("perplexity-m", "Perplexity", false),
  ("windsurf-m", "Windsurf", false),
  // ("deepseek", "DeepSeek"),
  // ("llama", "Llama"),
  // ("mistral", "Mistral"),
  // ("qwen", "Qwen"),
  // ("command", "Command"),
];

class ManageModelPage extends StatelessWidget {
  const ManageModelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CompPageShell(
      children: [
        CompBackRow(),
        SizedBox(height: 20.0),

        Text(
          "Manage models",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
        ),
        SizedBox(height: 16.0),

        CompTileContainer(
          children: [
            for (final (icon, name, enabled) in models) ...[
              CompTile(
                leading: Row(
                  children: [
                    CompDrawSvg(iconName: icon, monochrome: true, size: 25),
                    const SizedBox(width: 8),
                    Text(name),
                  ],
                ),
                trailing: CompSwitch(value: enabled),
              ),
              if (name != "Windsurf") CompDivider(),
            ],
          ],
        ),
      ],
    );
  }
}
