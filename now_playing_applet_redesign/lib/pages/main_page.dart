import 'package:flutter/material.dart';

import '../comp/comp_draw_svg.dart';
import '../comp/comp_page_shell.dart';
import '../constants.dart';
import '../data/media_info.dart';
import '../helper/nav_helper.dart';
import '../widgets/control_bar.dart';
import '../widgets/seek_bar.dart';
import 'about_page.dart';
import 'settings_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final media = mediaList[3];

    return CompPageShell(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CompDrawSvg(
              onTap: () => NavHelper.openPage(context, AboutPage()),
              iconName: "info",
              color: kAccentColor,
            ),
            CompDrawSvg(
              onTap: () => NavHelper.openPage(context, SettingsPage()),
              iconName: "settings",
              color: kAccentColor,
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Image.asset(
                  "assets/${media.artName}.jpg",
                  fit: BoxFit.cover,
                  height: 250,
                ),
              ),
              SizedBox(height: 16),

              Text(
                media.title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 4),
              Text(media.artist, style: TextStyle(color: Colors.grey.shade300)),
              SizedBox(height: 16),

              SeekBar(media: media),
              SizedBox(height: 16),

              ControlBar(),
            ],
          ),
        ),
      ],
    );
  }
}
