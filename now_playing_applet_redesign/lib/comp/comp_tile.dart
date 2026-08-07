import 'package:flutter/material.dart';

import '../constants.dart';

class CompTile extends StatelessWidget {
  const CompTile({
    super.key,
    this.leading,
    this.trailing,
    this.onTap,
    this.dynamicSize = false,
  });

  final Widget? leading;
  final Widget? trailing;
  final VoidCallback? onTap;
  final bool dynamicSize;

  @override
  Widget build(BuildContext context) {
    final padding = dynamicSize
        ? EdgeInsets.all(16)
        : EdgeInsets.symmetric(horizontal: 16);

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(borderRadius: kBorderRadius),
          height: dynamicSize ? null : 50,
          padding: padding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [?leading, ?trailing],
          ),
        ),
      ),
    );
  }
}
