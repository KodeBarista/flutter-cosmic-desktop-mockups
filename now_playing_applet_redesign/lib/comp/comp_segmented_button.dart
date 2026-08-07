import 'package:flutter/material.dart';

import "comp_draw_svg.dart";

class CompSegmentedButton extends StatelessWidget {
  const CompSegmentedButton({
    super.key,
    required this.items,
    required this.selectedIndex,
  });

  final List<Widget> items;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: List.generate(items.length * 2 - 1, (index) {
          if (index.isOdd) {
            return VerticalDivider(color: Colors.grey.shade300.withAlpha(50));
          }

          final itemIndex = index ~/ 2;
          final selected = itemIndex == selectedIndex;

          return Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (selected) ...[
                  const CompDrawSvg(iconName: "check"),
                  const SizedBox(width: 4),
                ],
                items[itemIndex],
              ],
            ),
          );
        }),
      ),
    );
  }
}
