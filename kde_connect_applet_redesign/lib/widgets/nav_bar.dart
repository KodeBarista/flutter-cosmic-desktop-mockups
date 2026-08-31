import 'package:flutter/material.dart';

import '../comp/comp_divider.dart';
import '../comp/comp_draw_svg.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final double size = 20;
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
          _NavBarItem(
            // isActive: true,
            child: Row(
              spacing: 10,
              children: [
                CompDrawSvg(iconName: "add"),
                Text("Pair new device"),
              ],
            ),
          ),
          CompDivider(),

          _NavBarItem(
            isActive: true,
            child: Row(
              spacing: 10,
              children: [
                CompDrawSvg(iconName: "call"),
                Text("Moto G64 5G"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  const _NavBarItem({super.key, required this.child, this.isActive = false});

  final Widget child;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isActive ? Color(0xFF373C41) : null,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: child,
    );
  }
}
