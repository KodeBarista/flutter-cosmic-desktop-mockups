import 'package:flutter/material.dart';

import '../comp/comp_tile_container.dart';
import 'app_tile.dart';

class ApplicationList extends StatelessWidget {
  const ApplicationList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      height: 600,
      child: SingleChildScrollView(
        child: CompTileContainer(
          children: [
            AppTile(
              iconName: "android-studio",
              label: "Android Studio",
              desc: "An IDE for Android app developers",
            ),
            AppTile(
              iconName: "edit",
              label: "COSMIC Edit",
              desc: "Text editor for the COSMIC desktop",
            ),
            AppTile(
              iconName: "files",
              label: "COSMIC Files",
              desc: "File manager for the COSMIC desktop",
            ),
            AppTile(
              iconName: "player",
              label: "COSMIC Player",
              desc: "Media player for the COSMIC desktop",
            ),AppTile(
              iconName: "reader",
              label: "COSMIC Reader",
              desc: "PDF reader for the COSMIC desktop",
            ),
            AppTile(
              iconName: "screenshot",
              label: "COSMIC Screenshot",
              desc: "Screenshot application for the COSMIC desktop",
            ),
            AppTile(
              iconName: "store",
              label: "COSMIC Store",
              desc: "Application store for the COSMIC desktop",
            ),
            AppTile(
              iconName: "term",
              label: "COSMIC Terminal",
              desc: "Terminal emulator for the COSMIC desktop",
            ),
            AppTile(
              iconName: "viewer",
              label: "COSMIC Viewer",
              desc: "View & edit images",
            ),
            AppTile(
              iconName: "disks",
              label: "Disks",
              desc: "Manage drives & media",
            ),
            AppTile(
              iconName: "disk-analyzer",
              label: "Disk Analyzer",
              desc: "Check folder sizes & available disk space",
            ),
            AppTile(
              iconName: "htop",
              label: "Htop",
              desc: "Show system processes",
            ),
            AppTile(
              iconName: "nvidia",
              label: "Nvidia Settings",
              desc: "Settings application for the COSMIC desktop",
            ),
            AppTile(
              iconName: "steam",
              label: "Steam",
              desc: "Application for managing & playing games",
            ),
            AppTile(
              iconName: "vs-code",
              label: "Visual Studio Code",
              desc: "Code editing redefined",
            ),
            AppTile(
              iconName: "vlc",
              label: "VLC Media Player",
              desc: "Read, capture & broadcast your multimedia stream",
            ),
            AppTile(
              iconName: "zed",
              label: "Zed",
              desc: "A high performance multiplayer code editor",
            ),
          ],
        ),
      ),
    );
  }
}
