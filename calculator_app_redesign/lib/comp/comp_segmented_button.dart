import 'package:flutter/material.dart';

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

          return Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [items[itemIndex]],
            ),
          );
        }),
      ),
    );
  }
}
