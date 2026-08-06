import 'package:flutter/material.dart';

import '../comp/comp_draw_svg.dart';
import '../constants.dart';
import '../helper/nav_helper.dart';
import '../pages/about_page.dart';
import '../pages/manage_model_page.dart';
import '../pages/settings_page.dart';

class TopRow extends StatelessWidget {
  const TopRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 4, 4, 0),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => NavHelper.openPage(context, AboutPage()),
            child: CompDrawSvg(iconName: "info", color: kAccentColor),
          ),
          Spacer(),
          Row(
            spacing: 24,
            children: [
              CompDrawSvg(iconName: "refresh", color: kAccentColor),
              GestureDetector(
                onTap: () => NavHelper.openPage(context, ManageModelPage()),
                child: CompDrawSvg(
                  iconName: "manage-model",
                  color: kAccentColor,
                ),
              ),
              GestureDetector(
                onTap: () => NavHelper.openPage(context, SettingsPage()),
                child: CompDrawSvg(iconName: "settings", color: kAccentColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
