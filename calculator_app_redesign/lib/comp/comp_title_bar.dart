import 'package:flutter/material.dart';

import 'comp_draw_svg.dart';
import '../constants.dart';

class CompTitleBar extends StatelessWidget {
  const CompTitleBar({
    super.key,
    required this.fileMenuEntries,
    required this.navbarVisible,
  });

  final List<String> fileMenuEntries;
  final bool navbarVisible;

  @override
  Widget build(BuildContext context) {
    final navbarIcon = navbarVisible ? "closed": "open";

    return Container(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 24, vertical: 16),
      child: Row(
        children: [
          CompDrawSvg(iconName: navbarIcon, color: kAccentColor),
          SizedBox(width: 28),
          ...fileMenuEntries.map(
            (entry) => Text(entry, style: TextStyle(color: kAccentColor)),
          ),
          Spacer(),
          Row(
            spacing: 24,
            children: [
              CompDrawSvg(iconName: "minimize", color: kAccentColor),
              CompDrawSvg(iconName: "maximize", color: kAccentColor),
              CompDrawSvg(iconName: "close", color: kAccentColor),
            ],
          ),
        ],
      ),
    );
  }
}
