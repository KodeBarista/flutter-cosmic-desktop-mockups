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
              child: RichText(
                text: const TextSpan(
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    TextSpan(text: "1024"),
                    TextSpan(
                      text: "+",
                      style: TextStyle(color: Colors.white70),
                    ),
                    TextSpan(text: "8"),
                    TextSpan(
                      text: "x",
                      style: TextStyle(color: Colors.white70),
                    ),
                    TextSpan(text: "12"),
                  ],
                ),
              ),
            ),
            CompDivider(),
            SizedBox(height: 12),
            Text("1120", style: TextStyle(color: Colors.white70, fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
