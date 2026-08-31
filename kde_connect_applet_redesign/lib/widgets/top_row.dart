import 'package:flutter/material.dart';

import '../comp/comp_draw_svg.dart';
import '../constants.dart';
import '../helper/nav_helper.dart';
import '../pages/about_page.dart';

class TopRow extends StatelessWidget {
  const TopRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 4, 4, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CompDrawSvg(
            onTap: () => NavHelper.openPage(context, AboutPage()),
            iconName: "info",
            color: kAccentColor,
          ),
          CompDrawSvg(
            // onTap: () => NavHelper.openPage(context, SettingsPage()),
            iconName: "settings",
            color: kAccentColor,
          ),
        ],
      ),
    );
  }
}
