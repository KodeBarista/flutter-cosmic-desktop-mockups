import 'package:flutter/material.dart';

import '../comp/comp_draw_svg.dart';
import '../comp/comp_page_shell.dart';
import '../comp/comp_parent_tile.dart';
import '../comp/comp_search_bar.dart';
import '../comp/comp_tile_container.dart';
import '../models/clipboard_item.dart';
import '../widgets/clipboard_item.dart';
import '../widgets/top_row.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bool hasContent = true;

    return CompPageShell(
      children: [
        TopRow(),
        SizedBox(height: 16),
        CompSearchBar(placeholder: "Search clipboard history"),
        SizedBox(height: 8),

        if (!hasContent)
          Container(
            height: 470,
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CompDrawSvg(iconName: "clipboard", size: 50),
                SizedBox(height: 8),
                Text("Nothing to paste!", style: TextStyle(fontSize: 20)),
                SizedBox(height: 4),
                Text(
                  "You'll see your clipboard history once you've copied something.",
                  style: TextStyle(fontSize: 13),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 50),
              ],
            ),
          ),

        if (hasContent) ...[
          Align(
            alignment: Alignment.centerRight,
            child: CompParentTile(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              child: Text("Clear", style: TextStyle(fontSize: 13)),
            ),
          ),
          SizedBox(height: 8),

          CompTileContainer(
            children: clipboard.map((item) {
              return ClipboardItem(type: item.type, content: item.content);
            }).toList(),
          ),
        ],
      ],
    );
  }
}
