import 'package:flutter/material.dart';

import '../comp/comp_draw_svg.dart';
import '../helper/nav_helper.dart';
import '../pages/about_page.dart';
import '../pages/history_page.dart';
import '../pages/settings_page.dart';

class TopRow extends StatelessWidget {
  const TopRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 4, 4, 20),
      child: Row(
        spacing: 20,
        children: [
          GestureDetector(
            onTap: () => NavHelper.openPage(context, AboutPage()),
            child: CompDrawSvg(iconName: "info"),
          ),
          Spacer(),
          CompDrawSvg(iconName: "add"),
          CompDrawSvg(
            onTap: () => NavHelper.openPage(context, HistoryPage()),
            iconName: "history",
          ),
          GestureDetector(
            onTap: () => NavHelper.openPage(context, SettingsPage()),
            child: CompDrawSvg(iconName: "settings"),
          ),
        ],
      ),
    );
  }
}
