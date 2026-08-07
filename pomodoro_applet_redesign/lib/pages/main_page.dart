import 'package:flutter/material.dart';

import '../comp/comp_draw_svg.dart';
import '../comp/comp_page_shell.dart';
import '../comp/comp_parent_tile.dart';
import '../comp/comp_segmented_button.dart';
import '../constants.dart';
import '../widgets/page_indicator.dart';
import '../widgets/top_row.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isActive = false;
    final timer = isActive ? "23:18" : "25:00";
    final icon = isActive ? "pause" : "play";

    return CompPageShell(
      children: [
        TopRow(),

        Padding(
          padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
          child: Column(
            children: [
              CompParentTile(
                alpha: 50,
                child: CompSegmentedButton(
                  items: [
                    Row(
                      children: [
                        CompDrawSvg(
                          iconName: "alarm",
                          size: 20,
                          color: isActive ? kAccentColor : null,
                        ),
                        SizedBox(width: 8),
                        Text(
                          "Work",
                          style: TextStyle(
                            color: isActive ? kAccentColor : null,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CompDrawSvg(iconName: "coffee", size: 24),
                        SizedBox(width: 8),
                        Text("Break", style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ],
                  selectedIndex: 0,
                ),
              ),
              SizedBox(height: 8),

              Center(
                child: Text(
                  timer,
                  style: TextStyle(fontSize: 72, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: 8),

              PageIndicator(),
              SizedBox(height: 18),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox.shrink(),
                  CompDrawSvg(iconName: "refresh", size: 24),
                  CompParentTile(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 6),
                    child: CompDrawSvg(iconName: icon, size: 24),
                  ),
                  CompDrawSvg(iconName: "skip-forward", size: 24),
                  SizedBox.shrink(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
