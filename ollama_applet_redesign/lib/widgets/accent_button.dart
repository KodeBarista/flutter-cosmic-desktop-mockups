import 'package:flutter/material.dart';

import '../comp/comp_draw_svg.dart';
import '../comp/comp_parent_tile.dart';
import '../constants.dart';

class AccentButton extends StatelessWidget {
  const AccentButton({
    super.key,
    this.label,
    this.iconName,
    this.color,
    this.subjectColor = Colors.black,
    this.padding,
  });

  final String? label;
  final String? iconName;
  final Color? color;
  final Color? subjectColor;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return CompParentTile(
      color: color ?? kAccentColor,
      padding: padding ?? EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 8,
        children: [
          if (iconName != null)
            CompDrawSvg(iconName: iconName!, color: subjectColor),
          if (label != null)
            Text(
              label!,
              style: TextStyle(
                color: subjectColor,
                fontWeight: FontWeight.w500,
              ),
            ),
        ],
      ),
    );
  }
}
