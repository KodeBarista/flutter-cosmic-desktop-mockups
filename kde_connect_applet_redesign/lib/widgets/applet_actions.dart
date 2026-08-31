import 'package:flutter/material.dart';

import '../comp/comp_draw_svg.dart';
import '../comp/comp_tile.dart';

class AppletAction extends StatelessWidget {
  const AppletAction({super.key, required this.iconName, required this.label});

  final String iconName;
  final String label;

  @override
  Widget build(BuildContext context) {
    return CompTile(
      leading: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 12,
        children: [
          CompDrawSvg(iconName: iconName),
          Text(label),
        ],
      ),
    );
  }
}
