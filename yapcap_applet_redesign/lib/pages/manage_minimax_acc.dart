import 'package:flutter/material.dart';

import '../comp/comp_back_row.dart';
import '../comp/comp_draw_svg.dart';
import '../comp/comp_page_shell.dart';
import '../comp/comp_parent_tile.dart';
import '../comp/comp_sub_header.dart';
import '../comp/comp_switch.dart';
import '../widgets/header.dart';
import '../widgets/status_card.dart';

class ManageMinimaxAcc extends StatelessWidget {
  const ManageMinimaxAcc({super.key});

  @override
  Widget build(BuildContext context) {
    return CompPageShell(
      children: [
        CompBackRow(),
        SizedBox(height: 20.0),

        Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Header(title: "Minimax"),
                  CompSwitch(value: true),
                ],
              ),
              SizedBox(height: 16.0),

              CompSubHeader(title: "Accounts"),
              CompParentTile(
                padding: EdgeInsetsGeometry.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                child: Text("Add account"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class AccountTrailing extends StatelessWidget {
  const AccountTrailing({
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
