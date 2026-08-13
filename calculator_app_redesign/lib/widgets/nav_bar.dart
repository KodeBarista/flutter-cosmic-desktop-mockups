import 'package:flutter/material.dart';

import '../comp/comp_divider.dart';
import '../comp/comp_draw_svg.dart';
import '../data/option.dart';
import 'nav_bar_item.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key, required this.optionIndex});

  final int optionIndex;

  @override
  Widget build(BuildContext context) {
    final double size = 20;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xFF272D33),
      ),
      height: 636,
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
                CompDrawSvg(iconName: "calculate"),
                Text("Basic calculator"),
              ],
            ),
          ),
          NavBarItem(
            // isActive: true,
            child: Row(
              spacing: 10,
              children: [
                CompDrawSvg(iconName: "recent"),
                Text("History"),
              ],
            ),
          ),
          CompDivider(),
          ...options.asMap().entries.map((entry) {
            final index = entry.key;
            final option = entry.value;

            return NavBarItem(
              // isActive: index == optionIndex,
              child: Row(
                spacing: 10,
                children: [
                  CompDrawSvg(iconName: option.iconName, size: size),
                  Text(option.label),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}
