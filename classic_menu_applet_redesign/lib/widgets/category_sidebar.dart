import 'package:flutter/material.dart';

import '../comp/comp_divider.dart';
import '../comp/comp_draw_svg.dart';
import '../comp/comp_parent_tile.dart';
import '../constants.dart';
import '../helper/nav_helper.dart';
import '../pages/about_page.dart';
import '../pages/settings_page.dart';
import 'category_item.dart';

class CategorySidebar extends StatelessWidget {
  const CategorySidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 4,
        children: [
          CompParentTile(
            child: CategoryItem(iconName: "menu", label: "All applications"),
          ),
          CategoryItem(iconName: "recent", label: "Recently used"),
          CompDivider(),
          CategoryItem(iconName: "music", label: "Audio"),
          CategoryItem(iconName: "video", label: "Video"),
          CategoryItem(iconName: "menu", label: "Development"),
          CategoryItem(iconName: "controller", label: "Games"),
          CategoryItem(iconName: "graphics", label: "Graphics"),
          CategoryItem(iconName: "network", label: "Network"),
          CategoryItem(iconName: "office", label: "Office"),
          CategoryItem(iconName: "settings", label: "Settings"),
          CategoryItem(iconName: "utility", label: "Utility"),
          CompDivider(),
          CategoryItem(
            onTap: () => NavHelper.openPage(context, AboutPage()),
            iconName: "info",
            label: "About",
          ),
          CategoryItem(
            onTap: () => NavHelper.openPage(context, SettingsPage()),
            iconName: "settings",
            label: "Applet settings",
          ),
          SizedBox(height: 38),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              spacing: 16,
              children: [
                _DrawSvg(iconName: "documents"),
                _DrawSvg(iconName: "downloads"),
                _DrawSvg(iconName: "home"),

                Spacer(),
                _DrawSvg(iconName: "settings"),
                _DrawSvg(iconName: "power"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _DrawSvg extends StatelessWidget {
  const _DrawSvg({required this.iconName});

  final String iconName;

  @override
  Widget build(BuildContext context) {
    return CompDrawSvg(iconName: iconName, size: 20, color: kAccentColor);
  }
}
