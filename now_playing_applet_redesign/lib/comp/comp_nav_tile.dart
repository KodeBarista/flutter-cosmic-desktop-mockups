import 'package:flutter/material.dart';

import '../helper/nav_helper.dart';
import 'comp_draw_svg.dart';
import 'comp_tile.dart';

class CompNavTile extends StatelessWidget {
  const CompNavTile({
    super.key,
    required this.label,
    this.page,
  });

  final String label;
  final Widget? page;

  @override
  Widget build(BuildContext context) {
    return CompTile(
      onTap: page != null ? () => NavHelper.openPage(context, page!) : null,
      leading: Text(label),
      trailing: CompDrawSvg(iconName: "right"),
    );
  }
}
