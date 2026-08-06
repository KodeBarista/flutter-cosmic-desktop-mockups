import 'package:flutter/material.dart';

import '../comp/comp_back_row.dart';
import '../comp/comp_page_shell.dart';
import '../comp/comp_parent_tile.dart';
import '../comp/comp_sub_header.dart';
import '../comp/comp_switch.dart';
import '../comp/comp_tile.dart';
import '../comp/comp_tile_container.dart';
import '../widgets/account_tile_trailing.dart';
import '../widgets/header.dart';

class ManageClaudeAcc extends StatelessWidget {
  const ManageClaudeAcc({super.key});

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
                  Header(title: "Claude"),
                  CompSwitch(value: true),
                ],
              ),
              SizedBox(height: 16.0),

              CompSubHeader(title: "Accounts"),
              CompTileContainer(
                children: [
                  CompTile(
                    onTap: () {},
                    leading: Text("team@example.com"),
                    trailing: AccountTileTrailing(
                      email: "team@example.com",
                      isActive: true,
                    ),
                  ),
                  CompTile(
                    onTap: () {},
                    leading: Text("solo@example.com"),
                    trailing: AccountTileTrailing(email: "solo@example.com"),
                  ),
                ],
              ),

              SizedBox(height: 12),
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
