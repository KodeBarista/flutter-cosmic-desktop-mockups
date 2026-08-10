import 'package:flutter/material.dart';

import '../comp/comp_draw_svg.dart';
import '../comp/comp_tile.dart';

class ColorTile extends StatelessWidget {
  const ColorTile({super.key, required this.format, required this.colorCode});

  final String format;
  final String colorCode;

  @override
  Widget build(BuildContext context) {
    return CompTile(
      leading: Row(
        spacing: 12,
        children: [
          Text(format, style: TextStyle(fontWeight: FontWeight.w500)),
          Text(colorCode, style: TextStyle(fontWeight: FontWeight.w300)),
        ],
      ),
      trailing: CompDrawSvg(iconName: "copy"),
    );
  }
}
