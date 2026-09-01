import 'package:flutter/material.dart';

import '../constants.dart';
import '../helper/nav_helper.dart';
import '../pages/about_page.dart';
import '../pages/settings_page.dart';

class TopRow extends StatelessWidget {
  const TopRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 4, 4, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => NavHelper.openPage(context, AboutPage()),
            child: Padding(
              padding: const EdgeInsets.only(top:4),
              child: Text("🛈", style: kTextStyle.copyWith(fontSize: 18)),
            ),
          ),
          GestureDetector(
            onTap: () => NavHelper.openPage(context, SettingsPage()),
            child: Text("⚙", style: kTextStyle.copyWith(fontSize: 22)),
          ),
        ],
      ),
    );
  }
}
