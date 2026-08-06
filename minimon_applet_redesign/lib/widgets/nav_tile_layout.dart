import 'package:flutter/material.dart';

import '../comp/comp_draw_svg.dart';
import '../comp/comp_tile.dart';
import '../helper/nav_helper.dart';

class NavTile extends StatelessWidget {
  const NavTile({
    super.key,
    required this.label,
    required this.stats,
    required this.page,
  });

  final String label;
  final String stats;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return CompTile(
      onTap: () => NavHelper.openPage(context, page),
      leading: Text(label),
      trailing: Row(
        spacing: 16,
        children: [
          Text(stats),
          CompDrawSvg(iconName: "right"),
        ],
      ),
    );
  }
}
