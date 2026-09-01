import 'package:flutter/material.dart';

import '../comp/comp_parent_tile.dart';
import '../constants.dart';

class OrderTile extends StatelessWidget {
  const OrderTile({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: CompParentTile(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            Icon(Icons.arrow_drop_up),
            SizedBox(width: 2.0),
            Icon(Icons.arrow_drop_down),
            SizedBox(width: 12.0),
            Text(label, style: kTextStyle),
          ],
        ),
      ),
    );
  }
}
