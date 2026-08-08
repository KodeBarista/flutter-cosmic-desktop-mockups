import 'package:flutter/material.dart';

import '../comp/comp_parent_tile.dart';
import '../constants.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
    required this.title,
    required this.url,
    required this.time,
  });

  final String title;
  final String url;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: CompParentTile(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Column(
          children: [
            Text(title),
            SizedBox(height: 8),
            Row(
              children: [
                Text(url, style: TextStyle(color: kAccentColor, fontSize: 12)),
                SizedBox(width: 8),
                Text("•", style: TextStyle(color: kAccentColor, fontSize: 12)),
                SizedBox(width: 8),
                Text(
                  "$time min ago",
                  style: TextStyle(color: kAccentColor, fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
