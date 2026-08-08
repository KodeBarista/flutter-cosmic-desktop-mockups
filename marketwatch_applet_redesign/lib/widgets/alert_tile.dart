import 'package:flutter/material.dart';

import '../comp/comp_draw_svg.dart';
import '../comp/comp_parent_tile.dart';

class AlertTile extends StatelessWidget {
  const AlertTile({
    super.key,
    this.stockSymbol,
    required this.condition,
  });

  final String? stockSymbol;
  final String condition;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: CompParentTile(
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            if (stockSymbol != null) ...[
              Text(stockSymbol!),
              SizedBox(width: 12),
            ],
            Text(condition),
            Spacer(),
            CompDrawSvg(iconName: "pause"),
            SizedBox(width: 20),
            CompDrawSvg(iconName: "delete"),
          ],
        ),
      ),
    );
  }
}
