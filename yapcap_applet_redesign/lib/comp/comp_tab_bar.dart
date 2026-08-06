import 'package:flutter/material.dart';

import '../constants.dart';

class CompTabBar extends StatelessWidget {
  const CompTabBar({
    super.key,
    required this.items,
    required this.selectedIndex,
  });

  final List<Widget> items;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          child: Row(
            children: List.generate(items.length * 2 - 1, (index) {
              if (index.isOdd) {
                return SizedBox.shrink();
              }

              final itemIndex = index ~/ 2;
              final selected = itemIndex == selectedIndex;

              return Expanded(
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      decoration: selected
                          ? BoxDecoration(
                              borderRadius: kTopRadius,
                              color: kAccentColor.withAlpha(30),
                            )
                          : null,
                      padding: EdgeInsets.all(12),
                      child: items[itemIndex],
                    ),
                    if (selected)
                      Positioned(
                        bottom: 1,
                        child: Container(
                          height: 3,
                          width: 200,
                          color: kAccentColor,
                        ),
                      ),
                  ],
                ),
              );
            }),
          ),
        ),
        Divider(height: 0, color: kAccentColor, thickness: 1.5),
      ],
    );
  }
}
