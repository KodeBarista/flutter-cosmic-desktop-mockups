import 'package:flutter/material.dart';

import '../comp/comp_divider.dart';
import '../comp/comp_parent_tile.dart';

class BuildRegularTextArea extends StatelessWidget {
  const BuildRegularTextArea({super.key});

  @override
  Widget build(BuildContext context) {
    return CompParentTile(
      child: Container(
        alignment: Alignment.centerRight,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: 100,
              child: Text(
                "1024x8",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            CompDivider(),
            SizedBox(height: 12),
            Text("8192", style: TextStyle(color: Colors.white70, fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
