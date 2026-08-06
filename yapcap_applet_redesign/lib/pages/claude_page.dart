import 'package:flutter/material.dart';

import '../comp/comp_draw_svg.dart';
import '../comp/comp_nav_tile.dart';
import '../comp/comp_sub_header.dart';
import '../comp/comp_tile_container.dart';
import '../widgets/account_tile.dart';
import '../widgets/header.dart';
import '../widgets/usage_card.dart';
import 'manage_claude_acc.dart';

class ClaudePage extends StatelessWidget {
  const ClaudePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Header(title: "Claude"),
            SizedBox(width: 4),
            Spacer(),
            CompDrawSvg(iconName: "left"),
            SizedBox(width: 4.0),
            Text("1/2", style: TextStyle(fontSize: 20)),
            SizedBox(width: 4.0),
            CompDrawSvg(iconName: "right"),
          ],
        ),
        SizedBox(height: 16.0),

        CompSubHeader(title: "Account"),
        CompTileContainer(
          children: [
            AccountCard(
              email: "team@example.com",
              plan: "Pro",
              status: ["Live", "Active"],
              lastUpdated: "1m",
            ),
            CompNavTile(label: "Manage accounts", page: ManageClaudeAcc()),
          ],
        ),
        SizedBox(height: 16.0),

        CompSubHeader(title: "Usage"),
        CompTileContainer(
          children: [
            UsageCard(
              title: "Session",
              leadingSubtitle: "12.0% used",
              trailingSubtitle: "3h 52m",
              value: 12,
              cap: 20,
            ),
            UsageCard(
              title: "Weekly",
              leadingSubtitle: "66.0% used",
              trailingSubtitle: "1d 23h",
              value: 66,
              cap: 30,
            ),
            UsageCard(
              title: "Extra usage",
              leadingSubtitle: "42.5% used",
              trailingSubtitle: "€8.50 / €20.0",
              value: 42.5,
              cap: 0,
            ),
          ],
        ),
      ],
    );
  }
}
