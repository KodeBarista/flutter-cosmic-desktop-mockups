import "package:flutter/material.dart";

import '../comp/comp_app_page_shell.dart';
import '../comp/comp_title_bar.dart';
import '../widgets/add_new_device.dart';
import '../widgets/connected_device.dart';
import '../widgets/nav_bar.dart';

enum CalcView { basic, scientific, other, history }

class MainWindow extends StatelessWidget {
  const MainWindow({super.key});

  @override
  Widget build(BuildContext context) {
    bool navbarVisible = true;
    bool addNewDevice = false;

    return CompAppPageShell(
      alpha: 150,
      width: 890,
      children: [
        CompTitleBar(navbarVisible: true, fileMenuEntries: []),
        Container(
          height: 800,
          padding: EdgeInsets.fromLTRB(8, 0, 12, 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 12,
            children: [
              if (navbarVisible) NavBar(),
              Expanded(
                // child: ConfigCmdPage(),
                child: addNewDevice ? AddNewDevice() : ConnectedDevice(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
