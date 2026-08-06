import 'package:flutter/material.dart';

import '../comp/comp_draw_svg.dart';
import 'status_card.dart';

class AccountTileTrailing extends StatelessWidget {
  const AccountTileTrailing({
    super.key,
    required this.email,
    this.isActive = false,
  });

  final String email;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (isActive) StatusCard(status: "Active", useAccent: true),
        SizedBox(width: 16.0),
        CompDrawSvg(iconName: "delete"),
      ],
    );
  }
}
