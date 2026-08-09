import 'package:flutter/material.dart';

import '../comp/comp_draw_svg.dart';
import '../comp/comp_page_shell.dart';
import '../comp/comp_parent_tile.dart';
import '../comp/comp_search_bar.dart';
import '../comp/comp_tile_container.dart';
import '../constants.dart';
import '../widgets/info_section.dart';
import '../widgets/top_row.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CompPageShell(
      children: [
        TopRow(),
        SizedBox(height: 16),

        Row(
          spacing: 8,
          children: [
            Expanded(child: CompSearchBar(placeholder: "Grammar")),
            CompParentTile(
              padding: EdgeInsets.all(8),
              child: CompDrawSvg(
                iconName: "shuffle",
                color: kAccentColor,
                size: 20,
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
        CompTileContainer(
          children: [
            InfoSection(
              title: "Grammar",
              type: "Noun",
              desc: [
                "The branch of linguistics that deals with syntax and morphology (and sometimes also deals with semantics) ",
              ],
            ),
            InfoSection(
              title: "Grammarian",
              type: "Noun",
              desc: [
                "A linguist who specializes in the study of grammar and syntax",
              ],
            ),
            InfoSection(
              title: "Grammar school",
              type: "Noun",
              desc: [
                "A school for young children",
                "A secondary school emphasizing Latin and Greek in preparation for college",
              ],
            ),
          ],
        ),
      ],
    );
  }
}
