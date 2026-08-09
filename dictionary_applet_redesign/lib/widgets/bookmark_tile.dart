import 'package:flutter/material.dart';

import '../comp/comp_draw_svg.dart';
import '../comp/comp_parent_tile.dart';

class BookmarkTile extends StatelessWidget {
  const BookmarkTile({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 8),
      child: CompParentTile(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label),
            CompDrawSvg(iconName: "delete"),
          ],
        ),
      ),
    );
  }
}
