import 'package:flutter/material.dart';

import '../comp/comp_draw_svg.dart';
import '../constants.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.iconName,
    required this.label,
    this.onTap,
  });

  final String iconName;
  final String label;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: kBorderRadius,
      color: Colors.transparent,
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          width: double.infinity,
          child: Row(
            children: [
              CompDrawSvg(iconName: iconName),
              SizedBox(width: 12),
              Text(label, style: TextStyle(fontSize: 14)),
            ],
          ),
        ),
      ),
    );
  }
}
