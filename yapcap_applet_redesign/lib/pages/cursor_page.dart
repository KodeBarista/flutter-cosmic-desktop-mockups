import 'package:flutter/material.dart';

import '../comp/comp_nav_tile.dart';
import '../comp/comp_sub_header.dart';
import '../comp/comp_tile_container.dart';
import '../widgets/account_tile.dart';
import '../widgets/header.dart';
import '../widgets/usage_card.dart';

class CursorPage extends StatelessWidget {
  const CursorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Header(title: "Cursor"),
        SizedBox(height: 16.0),

        CompSubHeader(title: "Account"),
        CompTileContainer(
          children: [
            AccountCard(
              email: "solo@example.com",
              plan: "Pro",
              status: ["Live", "Active"],
              lastUpdated: "1m",
            ),
            CompNavTile(label: "Manage accounts"),
          ],
        ),
        SizedBox(height: 16.0),

        CompSubHeader(title: "Usage"),
        CompTileContainer(
          children: [
            UsageCard(
              title: "Total",
              leadingSubtitle: "38.0% used",
              trailingSubtitle: "3h 52m",
              value: 38,
              cap: 65,
            ),
            UsageCard(
              title: "Auto + Composer",
              leadingSubtitle: "24.0% used",
              trailingSubtitle: "Resets in 19d 23h",
              value: 24,
              cap: 20,
            ),
            UsageCard(
              title: "API",
              leadingSubtitle: "49.6% used",
              trailingSubtitle: "Resets in 19d 23h",
              value: 49.6,
              cap: 33,
            ),
          ],
        ),
      ],
    );
  }
}
