import 'package:flutter/material.dart';

import '../comp/comp_draw_svg.dart';
import '../comp/comp_parent_tile.dart';
import '../comp/comp_switch.dart';
import '../comp/comp_tile.dart';

class OptionTile extends StatelessWidget {
  const OptionTile({
    super.key,
    required this.iconName,
    required this.title,
    required this.subtitle,
    this.value = true,
  });

  final String iconName;
  final String title;
  final String subtitle;
  final bool value;

  @override
  Widget build(BuildContext context) {
    return CompParentTile(
      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 10),
      child: Center(
        child: CompTile(
          leading: Row(
            spacing: 16,
            children: [
              CompDrawSvg(iconName: iconName, size: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(title, style: TextStyle(fontWeight: FontWeight.w500)),
                  Text(subtitle, style: TextStyle(fontSize: 13), maxLines: 2),
                ],
              ),
            ],
          ),
          trailing: CompSwitch(value: true),
        ),
      ),
    );
  }
}
