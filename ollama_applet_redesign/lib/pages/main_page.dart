import 'package:flutter/material.dart';

import '../comp/comp_divider.dart';
import '../comp/comp_draw_svg.dart';
import '../comp/comp_page_shell.dart';
import '../comp/comp_parent_tile.dart';
import '../comp/comp_tile.dart';
import '../comp/comp_tile_container.dart';
import '../constants.dart';
import '../data/messages.dart';
import '../helper/nav_helper.dart';
import '../widgets/accent_button.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/top_row.dart';
import './about_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CompPageShell(
      children: [
        TopRow(),
        CompTileContainer(
          children: [
            CompTile(
              leading: Expanded(
                child: Row(
                  children: [
                    Image.asset("assets/avatar.png", height: 30),
                    SizedBox(width: 20),
                    Text("codellama:13b"),
                    SizedBox(width: 80),
                    CompDrawSvg(
                      onTap: () => NavHelper.openPage(context, AboutPage()),
                      iconName: "down",
                    ),
                    Spacer(),
                    CompDrawSvg(
                      onTap: () => NavHelper.openPage(context, AboutPage()),
                      iconName: "up-chevron",
                    ),
                  ],
                ),
              ),
            ),
            CompTile(
              leading: Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("CPU: 12.8%"),
                    Text("GPU: 39%"),
                    Text("VRAM: 3.47 GB"),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 12),

        CompDivider(),
        SizedBox(height: 12),
        Column(
          spacing: 12,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: kBorderRadius,
                color: kBgColor.withAlpha(180),
              ),
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.only(right: 80),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: aiMsg1),
                    TextSpan(
                      text: "😃",
                      style: TextStyle(fontFamily: "Noto Color Emoji"),
                    ),
                  ],
                ),
                style: TextStyle(height: 1.5, wordSpacing: 1.5),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: kBorderRadius,
                  color: kCompColor.withAlpha(180),
                ),
                padding: EdgeInsets.all(16),
                child: Text(myMsg1),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: kBorderRadius,
                color: kBgColor.withAlpha(180),
              ),
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.only(right: 80),
              child: Column(
                spacing: 8,
                children: [
                  Text(
                    aiMsg21,
                    style: TextStyle(height: 1.5, wordSpacing: 1.5),
                  ),
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: kBorderRadius,
                          color: kBgColor.withAlpha(180),
                        ),
                        padding: EdgeInsets.all(16),
                        width: double.infinity,
                        child: Text(aiMsg22),
                      ),
                      Positioned(
                        top: 12,
                        right: 12,
                        child: CompDrawSvg(iconName: "copy"),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            CompParentTile(
              alpha: 120,
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: 12,
                vertical: 12,
              ),
              child: Row(
                spacing: 12,
                children: [
                  CompDrawSvg(iconName: "attachment", size: 20),
                  Expanded(
                    child: CustomTextField(placeholder: "Type a message..."),
                  ),
                  AccentButton(padding: EdgeInsets.all(10), iconName: "stop"),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
