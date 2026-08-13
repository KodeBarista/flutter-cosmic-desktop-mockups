import 'package:flutter/material.dart';

import '../comp/comp_divider.dart';
import '../comp/comp_drop_down.dart';
import '../comp/comp_parent_tile.dart';
import '../comp/comp_tile.dart';

class BuildOtherTextArea extends StatelessWidget {
  const BuildOtherTextArea({
    super.key,
    required this.filterOne,
    required this.valueOne,
    required this.filterTwo,
    required this.valueTwo,
    required this.height,
  });

  final String filterOne;
  final String valueOne;
  final String filterTwo;
  final String valueTwo;
  final double height;

  @override
  Widget build(BuildContext context) {
    final v1L = valueOne.split(" ");
    final v11 = v1L[0];
    final v12 = v1L[1];

    final v2L = valueTwo.split(" ");
    final v21 = v2L[0];
    final v22 = v2L[1];

    return CompParentTile(
      child: Stack(
        children: [
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            height: height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CompTile(leading: CompDropDown(label: filterOne)),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: RichText(
                          text: TextSpan(
                            style: const TextStyle(fontSize: 24),
                            children: [
                              TextSpan(text: v11),
                              TextSpan(text: " "),
                              TextSpan(
                                text: v12,
                                style: TextStyle(color: Colors.white70),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                CompDivider(),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CompTile(leading: CompDropDown(label: filterTwo)),
                      RichText(
                        text: TextSpan(
                          style: const TextStyle(fontSize: 24),
                          children: [
                            TextSpan(text: v21),
                            TextSpan(text: " "),
                            TextSpan(
                              text: v22,
                              style: TextStyle(color: Colors.white70),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
