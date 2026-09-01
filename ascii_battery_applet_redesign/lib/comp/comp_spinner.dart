import 'package:flutter/material.dart';

import '../constants.dart';
import "comp_draw_svg.dart";

class CompSpinner extends StatelessWidget {
  const CompSpinner({super.key, required this.value, this.size = 16});

  final int value;
  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CompDrawSvg(iconName: "remove"),
          Text("$value", style: kTextStyle),
          CompDrawSvg(iconName: "add"),
        ],
      ),
    );
  }
}
