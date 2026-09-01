import 'package:flutter/material.dart';

import '../comp/comp_back_row.dart';
import '../comp/comp_draw_svg.dart';
import '../comp/comp_page_shell.dart';
import '../comp/comp_parent_tile.dart';
import '../comp/comp_sub_header.dart';
import '../comp/comp_tile.dart';
import '../comp/comp_tile_container.dart';
import '../constants.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  static const title = "ASCII Battery";
  static const devName = "pewmoe";
  static const version = "1.2.0";
  static const license = "MPL-2.0-only";
  static const about = "ASCII Battery applet";

  @override
  Widget build(BuildContext context) {
    return CompPageShell(
      children: [
        CompBackRow(),
        SizedBox(height: 20.0),

        Center(
          child: Column(
            children: [
              CompDrawSvg(iconName: "logo", size: 50),
              SizedBox(height: 8),
              Text(
                title,
                style: kTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 2),

              Text(devName, style: kTextStyle),
              SizedBox(height: 8),

              CompParentTile(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                child: Text(version, style: kTextStyle),
              ),
            ],
          ),
        ),
        SizedBox(height: 16),

        CompSubHeader(title: "Links"),
        CompTileContainer(
          children: [
            CompTile(
              leading: Text("Repository", style: kTextStyle),
              trailing: CompDrawSvg(iconName: "link"),
            ),
            CompTile(
              leading: Text("Support", style: kTextStyle),
              trailing: CompDrawSvg(iconName: "link"),
            ),
          ],
        ),
        SizedBox(height: 16),

        CompSubHeader(title: "License"),
        CompParentTile(
          child: CompTile(
            leading: Text(license, style: kTextStyle),
            trailing: CompDrawSvg(iconName: "link"),
          ),
        ),
        SizedBox(height: 20),

        Center(
          child: Text(
            "$about for the COSMIC desktop",
            style: kTextStyle,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 4),
      ],
    );
  }
}
