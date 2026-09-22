import 'package:flutter/material.dart';

import '../comp/comp_draw_svg.dart';
import '../comp/comp_tile.dart';
import '../constants.dart';

class HistoryItem extends StatelessWidget {
  const HistoryItem({
    super.key,
    required this.isActive,
    required this.title,
    required this.date,
  });

  final bool isActive;
  final String title;
  final String date;

  @override
  Widget build(BuildContext context) {
    return CompTile(
      dynamicSize: true,
      leading: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              border: isActive
                  ? Border.all(color: kAccentColor, width: 4.5)
                  : Border.all(color: Colors.white70),
              shape: BoxShape.circle,
            ),
            padding: EdgeInsets.all(isActive ? 3 : 6),
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 4),
              Text(date, style: TextStyle(color: Colors.white70)),
            ],
          ),
        ],
      ),
      trailing: CompDrawSvg(iconName: "delete"),
    );
  }
}
