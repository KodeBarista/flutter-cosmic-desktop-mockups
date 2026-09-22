import 'package:flutter/material.dart';

import '../constants.dart';

class CompParentTile extends StatelessWidget {
  const CompParentTile({
    super.key,
    required this.child,
    this.padding,
    this.alpha = 100,
    this.color,
  });

  final Widget child;
  final EdgeInsetsGeometry? padding;
  final int alpha;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: kBorderRadius,
        color: color ?? kCompColor.withAlpha(alpha),
      ),
      padding: padding,
      child: child,
    );
  }
}
