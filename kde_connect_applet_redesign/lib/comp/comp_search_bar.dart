import 'package:flutter/material.dart';

import '../constants.dart';
import 'comp_draw_svg.dart';
import 'comp_parent_tile.dart';

class CompSearchBar extends StatelessWidget {
  const CompSearchBar({super.key, required this.placeholder});

  final String placeholder;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: kAccentColor.withAlpha(120), width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: CompParentTile(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            CompDrawSvg(iconName: "search"),
            SizedBox(width: 8),
            Text(placeholder),
            Spacer(),
            CompDrawSvg(iconName: "clear", color: kAccentColor),
          ],
        ),
      ),
    );
  }
}
