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
                        child: Text(valueOne, style: TextStyle(fontSize: 24)),
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
                      Text(valueTwo, style: TextStyle(fontSize: 24)),
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
