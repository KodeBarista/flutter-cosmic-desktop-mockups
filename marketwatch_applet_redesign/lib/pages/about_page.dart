import 'package:flutter/material.dart';

import '../comp/comp_back_row.dart';
import '../comp/comp_draw_svg.dart';
import '../comp/comp_page_shell.dart';
import '../comp/comp_parent_tile.dart';
import '../comp/comp_sub_header.dart';
import '../comp/comp_tile.dart';
import '../comp/comp_tile_container.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  static const title = "MarketWatch";
  static const devName = "MiracleForge";
  static const version = "1.3.1";
  static const license = "GPL-3.0-only";
  static const about = "Stock market monitor";

  @override
  Widget build(BuildContext context) {
    return CompPageShell(
      children: [
        CompBackRow(),
        SizedBox(height: 20.0),

        Center(
          child: Column(
            children: [
              Image.asset("assets/logo.jpg", height: 100),
              Text(
                title,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 2),
              Text(devName, style: TextStyle(fontWeight: FontWeight.w300)),
              SizedBox(height: 8),

              CompParentTile(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                child: Text(
                  version,
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 16),

        CompSubHeader(title: "Links"),
        CompTileContainer(
          children: [
            CompTile(
              leading: Text("Repository"),
              trailing: CompDrawSvg(iconName: "link"),
            ),
            CompTile(
              leading: Text("Support"),
              trailing: CompDrawSvg(iconName: "link"),
            ),
          ],
        ),
        SizedBox(height: 16),

        CompSubHeader(title: "Developers"),
        CompParentTile(
          child: CompTile(
            leading: Text(devName),
            trailing: CompDrawSvg(iconName: "link"),
          ),
        ),
        SizedBox(height: 16),

        CompSubHeader(title: "License"),
        CompParentTile(
          child: CompTile(
            leading: Text(license),
            trailing: CompDrawSvg(iconName: "link"),
          ),
        ),
        SizedBox(height: 20),

        Center(child: Text("$about for the COSMIC desktop")),
        SizedBox(height: 4),
      ],
    );
  }
}
