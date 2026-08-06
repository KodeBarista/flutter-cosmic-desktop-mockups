import 'package:flutter/material.dart';

import '../constants.dart';
import 'comp_draw_svg.dart';

class CompBackRow extends StatelessWidget {
  const CompBackRow({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pop(),
      child: Padding(
        padding: EdgeInsetsGeometry.only(top: 4.0),
        child: Row(
          children: [
            CompDrawSvg(iconName: "left", size: 16, color: kAccentColor),
            SizedBox(width: 4),
            Text(
              "Back",
              style: TextStyle(
                color: kAccentColor,
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
