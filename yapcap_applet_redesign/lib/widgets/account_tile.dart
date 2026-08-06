import 'package:flutter/material.dart';

import 'status_card.dart';

class AccountCard extends StatelessWidget {
  const AccountCard({
    super.key,
    required this.email,
    required this.status,
    required this.plan,
    required this.lastUpdated,
  });

  final String email;
  final List<String> status;
  final String plan;
  final String lastUpdated;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                email,
                style: TextStyle(fontSize: 16),
              ),
              StatusCard(status: plan),
            ],
          ),
          SizedBox(height: 8.0),
          Row(
            children: [
              for (final label in status) ...[
                StatusCard(status: label, useAccent: true),
                SizedBox(width: 12),
              ],
              Spacer(),
              Text(
                "Updated $lastUpdated ago",
                style: TextStyle(fontSize: 13),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
