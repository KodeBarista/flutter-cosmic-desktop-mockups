import 'package:flutter/material.dart';

import '../comp/comp_back_row.dart';
import '../comp/comp_draw_svg.dart';
import '../comp/comp_page_shell.dart';
import '../comp/comp_parent_tile.dart';
import '../comp/comp_spinner.dart';
import '../comp/comp_tile.dart';
import '../comp/comp_tile_container.dart';

class ProfilesPage extends StatelessWidget {
  const ProfilesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CompPageShell(
      children: [
        CompBackRow(),
        SizedBox(height: 20),

        Row(
          children: [
            Text(
              "Profiles",
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500),
            ),
            Spacer(),
            CompDrawSvg(iconName: "add", size: 24),
            SizedBox(width: 4),
          ],
        ),
        SizedBox(height: 16.0),

        CompTileContainer(
          children: [
            CompTile(
              leading: Text("Coding"),
              trailing: CompDrawSvg(iconName: "up"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: CompTileContainer(
                hideColor: true,
                children: [
                  CompTile(
                    leading: Text("Coding"),
                    trailing: Row(
                      spacing: 20,
                      children: [
                        CompDrawSvg(iconName: "edit"),
                        CompDrawSvg(
                          iconName: "delete",
                          color: Color(0xFFFFA090),
                        ),
                      ],
                    ),
                  ),
                  CompTile(
                    leading: Text("Work time (min)"),
                    trailing: CompSpinner(value: 25),
                  ),
                  CompTile(
                    leading: Text("Short break time (min)"),
                    trailing: CompSpinner(value: 5),
                  ),
                  CompTile(
                    leading: Text("Long break time (min)"),
                    trailing: CompSpinner(value: 15),
                  ),
                  CompTile(
                    leading: Text("Long break interval"),
                    trailing: CompSpinner(value: 4),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 16),

        CompParentTile(
          child: CompTile(
            leading: Text("Study"),
            trailing: CompDrawSvg(iconName: "down"),
          ),
        ),
        SizedBox(height: 16),

        CompParentTile(
          child: CompTile(
            leading: Text("Writing"),
            trailing: CompDrawSvg(iconName: "down"),
          ),
        ),

        SizedBox(height: 4),
      ],
    );
  }
}
