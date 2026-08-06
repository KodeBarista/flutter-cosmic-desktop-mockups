import 'package:flutter/material.dart';

import '../comp/comp_nav_tile.dart';
import '../comp/comp_sub_header.dart';
import '../comp/comp_tile_container.dart';
import '../widgets/account_tile.dart';
import '../widgets/header.dart';
import '../widgets/usage_card.dart';

class GeminiPage extends StatelessWidget {
  const GeminiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Header(title: "Gemini"),
        SizedBox(height: 16.0),

        CompSubHeader(title: "Account"),
        CompTileContainer(
          children: [
            AccountCard(
              email: "pro@example.com",
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
              title: "Pro",
              leadingSubtitle: "45.0% used",
              trailingSubtitle: "Resets in 13hr 59m",
              value: 45,
              cap: 20,
            ),
            UsageCard(
              title: "Flash",
              leadingSubtitle: "20.0% used",
              trailingSubtitle: "Resets in 13hr 59m",
              value: 20,
              cap: 30,
            ),
            UsageCard(
              title: "Lite",
              leadingSubtitle: "8.0% used",
              trailingSubtitle: "Resets in 13hr 59m",
              value: 8,
              cap: 0,
            ),
          ],
        ),
      ],
    );
  }
}
