import 'package:flutter/material.dart';

import '../constants.dart';

class CompParentTile extends StatelessWidget {
  const CompParentTile({
    super.key,
    required this.child,
    this.padding,
    this.alpha=100,
  });

  final Widget child;
  final EdgeInsetsGeometry? padding;
  final int alpha;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: kBorderRadius,
        color: kCompColor.withAlpha(alpha),
      ),
      padding: padding,
      child: child,
    );
  }
}
