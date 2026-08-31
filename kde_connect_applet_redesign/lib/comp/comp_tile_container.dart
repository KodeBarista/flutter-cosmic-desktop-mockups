import 'package:flutter/material.dart';

import 'comp_parent_tile.dart';
import 'comp_divider.dart';

class CompTileContainer extends StatelessWidget {
  const CompTileContainer({
    super.key,
    required this.children,
    this.hideColor = false,
    this.alpha = 100,
  });

  final List<Widget> children;
  final bool hideColor;
  final int alpha;

  @override
  Widget build(BuildContext context) {
    return CompParentTile(
      alpha: alpha,
      child: Column(
        children: [
          ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) => children[index],
            separatorBuilder: (context, index) => CompDivider(),
            itemCount: children.length,
          ),
        ],
      ),
    );
  }
}
