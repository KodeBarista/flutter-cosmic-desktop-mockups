import 'package:flutter/material.dart';

import 'comp_divider.dart';
import 'comp_parent_tile.dart';

class CompTileContainer extends StatelessWidget {
  const CompTileContainer({
    super.key,
    required this.children,
    this.hideColor = false,
  });

  final List<Widget> children;
  final bool hideColor;

  @override
  Widget build(BuildContext context) {
    return CompParentTile(
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
