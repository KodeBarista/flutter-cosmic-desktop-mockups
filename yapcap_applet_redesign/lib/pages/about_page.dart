import 'package:flutter/material.dart';

import '../comp/comp_back_row.dart';
import '../comp/comp_draw_svg.dart';
import '../comp/comp_page_shell.dart';
import '../comp/comp_sub_header.dart';
import '../comp/comp_tile.dart';
import '../comp/comp_tile_container.dart';
import '../comp/comp_parent_tile.dart';

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
                "Yapcap",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 2),

              Text("TopiCsarno", style: TextStyle(fontWeight: FontWeight.w300)),
              SizedBox(height: 8),

              CompParentTile(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                child: Text(
                  "0.5.2",
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
            leading: Text("TopiCsarno"),
            trailing: CompDrawSvg(iconName: "link"),
          ),
        ),
        SizedBox(height: 16),

        CompSubHeader(title: "License"),
        CompParentTile(
          child: CompTile(
            leading: Text("MPL-2.0-only"),
            trailing: CompDrawSvg(iconName: "link"),
          ),
        ),
        SizedBox(height: 20),

        Center(child: Text("LLM quota monitor for the COSMIC desktop")),
        SizedBox(height: 4),
      ],
    );
  }
}
