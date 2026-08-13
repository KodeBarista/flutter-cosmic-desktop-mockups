import 'package:flutter/material.dart';

import '../comp/comp_parent_tile.dart';
import '../comp/comp_tile_container.dart';
import 'history_item.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CompParentTile(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              child: Text("Clear"),
            ),
            SizedBox(width: 4),
          ],
        ),
        SizedBox(height: 8),

        CompTileContainer(
          children: [
            HistoryItem(date: "13 August", expr: "16x28", result: "448"),
            HistoryItem(
              date: "14 August",
              expr: "12x3+4x8+9x27",
              result: "311",
            ),
            HistoryItem(date: "24 July", expr: "16x28", result: "448"),
            HistoryItem(date: "12 July", expr: "712/8", result: "89"),
            HistoryItem(date: "11 July", expr: "16x28", result: "448"),
          ],
        ),
      ],
    );
  }
}
