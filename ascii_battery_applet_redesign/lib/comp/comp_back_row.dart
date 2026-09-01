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
          mainAxisSize: MainAxisSize.min,
          children: [
            CompDrawSvg(iconName: "left", size: 16, color: kAccentColor),
            SizedBox(width: 4),
            Text(
              "Back",
              style: kTextStyle.copyWith(color: kAccentColor, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
