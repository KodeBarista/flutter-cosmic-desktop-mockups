import 'package:flutter/material.dart';

import '../comp/comp_divider.dart';
import '../comp/comp_page_shell.dart';
import '../comp/comp_tile_container.dart';
import '../widgets/color_box_row.dart';
import '../widgets/color_picker_row.dart';
import '../widgets/color_tile.dart';
import '../widgets/top_row.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CompPageShell(
      children: [
        TopRow(),
        SizedBox(height: 16),

        Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 6),
          child: Column(
            children: [
              ColorPickerRow(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: CompDivider(),
              ),

              ColorBoxRow(),
              SizedBox(height: 16),

              CompTileContainer(
                children: [
                  ColorTile(format: "HEX", colorCode: "#9DA4AA"),
                  ColorTile(format: "RGB", colorCode: "rgb(169, 188, 194)"),
                  ColorTile(format: "HSL", colorCode: "hsl(194, 17%, 71%)"),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 4),
      ],
    );
  }
}
