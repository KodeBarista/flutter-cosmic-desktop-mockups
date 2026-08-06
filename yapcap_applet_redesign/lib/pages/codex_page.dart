import 'package:flutter/material.dart';

import '../comp/comp_nav_tile.dart';
import '../comp/comp_sub_header.dart';
import '../comp/comp_tile_container.dart';
import '../widgets/account_tile.dart';
import '../widgets/header.dart';
import '../widgets/usage_card.dart';
import 'manage_codex_acc.dart';

class CodexPage extends StatelessWidget {
  const CodexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Header(title: "Codex"),
        SizedBox(height: 16.0),

        CompSubHeader(title: "Account"),
        CompTileContainer(
          children: [
            AccountCard(
              email: "pro@example.com",
              plan: "Pro",
              status: ["Live"],
              lastUpdated: "1m",
            ),
            CompNavTile(label: "Manage accounts", page: ManageCodexAcc()),
          ],
        ),
        SizedBox(height: 16.0),

        CompSubHeader(title: "Usage"),
        CompTileContainer(
          children: [
            UsageCard(
              title: "Session",
              leadingSubtitle: "53.0% used",
              trailingSubtitle: "3h 52m",
              value: 53,
              cap: 40,
            ),
            UsageCard(
              title: "Weekly",
              leadingSubtitle: "66.0% used",
              trailingSubtitle: "1d 23h",
              value: 66,
              cap: 88,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text("Credits", style: TextStyle(fontSize: 16)),
                  SizedBox(height: 8.0),
                  Text(
                    "540 available",
                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
