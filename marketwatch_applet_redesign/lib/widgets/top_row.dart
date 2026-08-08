import 'package:flutter/material.dart';

import '../comp/comp_draw_svg.dart';
import '../constants.dart';
import '../helper/nav_helper.dart';
import '../pages/about_page.dart';
import '../pages/news_page.dart';
import '../pages/portfolio_page.dart';
import '../pages/settings_page.dart';

class TopRow extends StatelessWidget {
  const TopRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 4, 4, 0),
      child: Row(
        children: [
          CompDrawSvg(
            onTap: () => NavHelper.openPage(context, AboutPage()),
            iconName: "info",
            color: kAccentColor,
          ),
          Spacer(),
          Row(
            spacing: 24,
            children: [
              CompDrawSvg(
                onTap: () => NavHelper.openPage(context, PortfolioPage()),
                iconName: "portfolio",
                color: kAccentColor,
                size: 18,
              ),
              CompDrawSvg(
                onTap: () => NavHelper.openPage(context, NewsPage()),
                iconName: "news",
                color: kAccentColor,
                size: 18,
              ),
              CompDrawSvg(
                onTap: () => NavHelper.openPage(context, SettingsPage()),
                iconName: "settings",
                color: kAccentColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
