import 'package:flutter/material.dart';

import '../comp/comp_back_row.dart';
import '../comp/comp_draw_svg.dart';
import '../comp/comp_parent_tile.dart';
import '../comp/comp_tile.dart';
import '../comp/comp_tile_container.dart';

class ConfigCmdPage extends StatelessWidget {
  const ConfigCmdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CompBackRow(),

        SizedBox(height: 12),
        Text(
          "Commands",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),

        SizedBox(height: 12),

        CompTileContainer(
          children: [
            CompTile(
              dynamicSize: true,
              leading: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Ping"),
                  SizedBox(height: 4),
                  Text(
                    "notify-send \"My phone\" \"Hello from phone\"",
                    style: TextStyle(fontSize: 13),
                  ),
                ],
              ),
              trailing: CompDrawSvg(iconName: "delete"),
            ),
            CompTile(
              dynamicSize: true,
              leading: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Lock session"),
                  SizedBox(height: 4),
                  Text("loginctl lock-session", style: TextStyle(fontSize: 13)),
                ],
              ),
              trailing: CompDrawSvg(iconName: "delete"),
            ),
          ],
        ),
        SizedBox(height: 12),

        Align(
          alignment: Alignment.centerRight,
          child: CompParentTile(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Text("Add command"),
          ),
        ),
      ],
    );
  }
}
