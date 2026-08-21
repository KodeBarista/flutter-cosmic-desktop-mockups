import 'package:flutter/material.dart';

import '../comp/comp_draw_svg.dart';
import 'nav_bar_item.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xFF272D33),
      ),
      height: double.infinity,
      width: 285,
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 8,
        children: [
          NavBarItem(
            isActive: true,
            child: Row(
              spacing: 10,
              children: [
                CompDrawSvg(iconName: "system"),
                Text("System services"),
              ],
            ),
          ),
          NavBarItem(
            child: Row(
              spacing: 10,
              children: [
                CompDrawSvg(iconName: "users"),
                Text("User services"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
