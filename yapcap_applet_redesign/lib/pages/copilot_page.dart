import 'package:flutter/material.dart';

import '../comp/comp_nav_tile.dart';
import '../comp/comp_sub_header.dart';
import '../comp/comp_tile_container.dart';
import '../widgets/account_tile.dart';
import '../widgets/header.dart';
import '../widgets/usage_card.dart';

class CopilotPage extends StatelessWidget {
  const CopilotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Header(title: "Copilot"),
        SizedBox(height: 16.0),

        CompSubHeader(title: "Account"),
        CompTileContainer(
          children: [
            AccountCard(
              email: "morgan.pro",
              plan: "Pro+",
              status: ["Live"],
              lastUpdated: "5m",
            ),
            CompNavTile(label: "Manage accounts"),
          ],
        ),
        SizedBox(height: 16.0),

        CompSubHeader(title: "Usage"),
        CompTileContainer(
          children: [
            UsageCard(
              title: "Premium",
              leadingSubtitle: "100% used",
              trailingSubtitle: "13d 23h",
              value: 100,
              cap: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
              child: Text(
                "+42 over plan",
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 13,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
