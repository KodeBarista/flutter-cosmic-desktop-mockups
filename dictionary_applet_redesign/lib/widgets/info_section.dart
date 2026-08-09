import 'package:flutter/material.dart';

import '../comp/comp_parent_tile.dart';

class InfoSection extends StatelessWidget {
  const InfoSection({
    super.key,
    required this.title,
    required this.type,
    required this.desc,
  });

  final String title;
  final String type;
  final List<String> desc;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {},
        child: CompParentTile(
          alpha: 0,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                spacing: 16,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  // Spacer(),
                  // if (title == "Grammar") ...[
                  //   CompDrawSvg(iconName: "copy"),
                  //   CompDrawSvg(iconName: "add-bookmark"),
                  // ],
                ],
              ),
              SizedBox(height: 4.0),
              Text(type, style: TextStyle(fontSize: 14, color: Colors.white70)),
              SizedBox(height: 4.0),
              ...desc.asMap().entries.map(
                (e) => Text(
                  "${e.key + 1}. ${e.value}",
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
