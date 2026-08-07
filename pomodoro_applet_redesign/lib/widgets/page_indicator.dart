import 'package:flutter/material.dart';

import '../constants.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
        spacing: 8,
        children: [
      _PageIndicatorItem(fill: true,),
      _PageIndicatorItem(),
      _PageIndicatorItem(),
      _PageIndicatorItem(),
    ]);
  }
}

class _PageIndicatorItem extends StatelessWidget {
  const _PageIndicatorItem({super.key, this.fill = false});

  final bool fill;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: kAccentColor),
        color: fill ? kAccentColor : null,
        shape: BoxShape.circle,
      ),
      height: 12,
      width: 12,
    );
  }
}
