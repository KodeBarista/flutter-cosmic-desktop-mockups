import 'package:flutter/material.dart';

import '../comp/comp_draw_svg.dart';
import '../constants.dart';
import 'color_box.dart';

class ColorPickerRow extends StatelessWidget {
  const ColorPickerRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12,
      children: [
        ColorBox(color: 0xFFA9BCC2, size: 30),
        Text("#9DA4AA"),
        Spacer(),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: kAccentColor,
          ),
          padding: EdgeInsets.all(6),
          child: CompDrawSvg(iconName: "dropper", color: kBgColor, size: 20),
        ),
      ],
    );
  }
}
