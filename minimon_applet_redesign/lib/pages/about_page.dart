import 'package:flutter/material.dart';

import '../comp/comp_back_row.dart';
import '../comp/comp_draw_svg.dart';
import '../comp/comp_page_shell.dart';
import '../comp/comp_sub_header.dart';
import '../comp/comp_tile.dart';
import '../comp/comp_tile_container.dart';
import '../constants.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

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
                "Minimon",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 2),
              Text(
                "Hyperchaotic",
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
              SizedBox(height: 8),

              Container(
                decoration: BoxDecoration(
                  borderRadius: kBorderRadius,
                  color: kCompColor.withAlpha(100),
                ),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                child: Text(
                  "1.1.2",
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
        CompTileContainer(
          children: [
            CompTile(
              leading: Text("Hyperchaotic"),
              trailing: CompDrawSvg(iconName: "link"),
            ),
          ],
        ),
        SizedBox(height: 16),

        CompSubHeader(title: "License"),
        CompTileContainer(
          children: [
            CompTile(
              leading: Text("GPL-3.0-only"),
              trailing: CompDrawSvg(iconName: "link"),
            ),
          ],
        ),
        SizedBox(height: 20),

        Center(child: Text("HW monitor for the COSMIC desktop")),
        SizedBox(height: 4),
      ],
    );
  }
}
