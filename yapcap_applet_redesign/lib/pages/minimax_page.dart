import 'package:flutter/material.dart';

import '../comp/comp_nav_tile.dart';
import '../comp/comp_parent_tile.dart';
import '../comp/comp_sub_header.dart';
import '../widgets/header.dart';
import 'manage_minimax_acc.dart';

class MinimaxPage extends StatelessWidget {
  const MinimaxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Header(title: "Minimax"),
        SizedBox(height: 16.0),

        CompSubHeader(title: "Account"),
        CompParentTile(
          child: CompNavTile(
            label: "Manage accounts",
            page: ManageMinimaxAcc(),
          ),
        ),
        SizedBox(height: 12.0),
      ],
    );
  }
}
