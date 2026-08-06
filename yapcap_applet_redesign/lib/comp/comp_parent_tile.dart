import 'package:flutter/material.dart';

import '../constants.dart';

class CompParentTile extends StatelessWidget {
  const CompParentTile({super.key, required this.child, this.padding});

  final Widget child;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: kBorderRadius,
        color: kCompColor.withAlpha(150),
      ),
      padding: padding,
      child: child,
    );
  }
}
