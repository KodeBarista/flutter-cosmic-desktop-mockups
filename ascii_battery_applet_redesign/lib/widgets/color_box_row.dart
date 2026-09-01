import 'package:flutter/material.dart';

import '../comp/comp_draw_svg.dart';
import '../constants.dart';
import 'color_box.dart';

final colors = [
  0xFF78DC78,
  0xFFA9BCC2,
  0xFF2CA8B6,
  0xFF8FADD7,
  0xFFEEA100,
  0xFFC45EF6,
];

class ColorBoxRow extends StatelessWidget {
  const ColorBoxRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: colors
          .map(
            (color) => Stack(
              alignment: Alignment.bottomLeft,
              children: [
                ColorBox(color: color, size: 34),
                if (color == 0xFFA9BCC2)
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(4),
                        bottomLeft: Radius.circular(6),
                      ),
                      color: kBgColor,
                    ),
                    margin: EdgeInsets.fromLTRB(1, 0, 0, 1),
                    padding: EdgeInsets.all(2),
                    child: CompDrawSvg(
                      iconName: "check",
                      color: kAccentColor,
                      size: 12,
                    ),
                  ),
              ],
            ),
          )
          .toList(),
    );
  }
}
