import "package:flutter/material.dart";

import '../comp/comp_page_shell.dart';
import '../comp/comp_parent_tile.dart';
import '../comp/comp_title_bar.dart';
import '../widgets/nav_bar.dart';
import '../widgets/service_table.dart';
import 'service_page.dart';

enum CalcView { basic, scientific, other, history }

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bool navbarVisible = true;
    final bool showServicePage = false;

    return CompPageShell(
      alpha: 150,
      width: navbarVisible ? 1025 : 365,
      children: [
        CompTitleBar(navbarVisible: navbarVisible, fileMenuEntries: ["View"]),
        Container(
          height: 645,
          padding: EdgeInsets.fromLTRB(8, 0, 12, 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 12,
            children: [
              if (navbarVisible) NavBar(),
              showServicePage
                  ? Expanded(child: ServicePage())
                  : Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 0.0),
                            child: Text(
                              "System services",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 12),
                          Expanded(
                            child: CompParentTile(child: ServiceTable()),
                          ),
                        ],
                      ),
                    ),
            ],
          ),
        ),
      ],
    );
  }
}
