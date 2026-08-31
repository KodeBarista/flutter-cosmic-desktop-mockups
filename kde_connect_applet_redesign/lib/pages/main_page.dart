import 'package:flutter/material.dart';

import '../comp/comp_divider.dart';
import '../comp/comp_draw_svg.dart';
import '../comp/comp_page_shell.dart';
import '../comp/comp_parent_tile.dart';
import '../comp/comp_tile_container.dart';
import '../widgets/applet_actions.dart';
import '../widgets/top_row.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CompPageShell(
      children: [
        TopRow(),
        SizedBox(height: 16),

        CompDivider(),
        SizedBox(height: 12),
        Text(
          "Connected devices",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 12),
        CompParentTile(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  horizontal: 12,
                  vertical: 16,
                ),
                child: Row(
                  spacing: 8,
                  children: [
                    CompDrawSvg(iconName: "phone", size: 40),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 4,
                      children: [
                        Text(
                          "Moto G64 5G",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Row(
                          spacing: 8,
                          children: [
                            CompDrawSvg(iconName: "battery"),
                            Text("68%"),
                            Text("·"),
                            CompDrawSvg(iconName: "cellular"),
                            Text("4G+"),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    CompDrawSvg(iconName: "up"),
                    SizedBox.shrink(),
                  ],
                ),
              ),

              CompDivider(),
              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
                child: CompTileContainer(
                  alpha: 0,
                  children: [
                    AppletAction(iconName: "ping", label: "Ping"),
                    AppletAction(iconName: "find", label: "Find my phone"),
                    AppletAction(
                      iconName: "clipboard",
                      label: "Share clipboard",
                    ),
                    AppletAction(iconName: "sms", label: "SMS messages"),
                    AppletAction(iconName: "share", label: "Send file"),
                    Row(
                      children: [
                        AppletAction(
                          iconName: "browse",
                          label: "Browse device",
                        ),
                        Spacer(),
                        CompDrawSvg(iconName: "eject"),
                        SizedBox(width: 16),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 4),
      ],
    );
  }
}
