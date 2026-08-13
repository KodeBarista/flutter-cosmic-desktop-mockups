import 'package:flutter/material.dart';

import 'comp_draw_svg.dart';

class CompDropDown extends StatelessWidget {
  const CompDropDown({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(label),
        SizedBox(width: 4),
        CompDrawSvg(iconName: "down"),
      ],
    );
  }
}
