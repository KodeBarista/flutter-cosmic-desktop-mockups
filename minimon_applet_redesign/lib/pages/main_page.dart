import 'package:flutter/material.dart';

import '../comp/comp_draw_svg.dart';
import '../comp/comp_page_shell.dart';
import '../comp/comp_tile.dart';
import '../comp/comp_tile_container.dart';
import '../constants.dart';
import '../widgets/nav_tile_layout.dart';
import 'about_page.dart';
import 'cpu_page.dart';
import 'disk_page.dart';
import 'general_settings_page.dart';
import 'gpu_page.dart';
import 'memory_page.dart';
import 'network_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CompPageShell(
      children: [
        CompTileContainer(
          children: [
            CompTile(
              leading: Text("Launch COSMIC Monitor"),
              trailing: CompDrawSvg(iconName: "open"),
            ),
          ],
        ),
        SizedBox(height: 12),
        CompTileContainer(
          children: [
            NavTile(
              label: "General settings",
              stats: "",
              page: GeneralSettingsPage(),
            ),
            NavTile(label: "CPU", stats: "12.3% | 52°C", page: CpuPage()),
            NavTile(
              label: "Memory",
              stats: "5.96 GB / 15.4 GB",
              page: MemoryPage(),
            ),
            NavTile(
              label: "Network",
              stats: "↓ 127.8 KB/s | ↑ 1.07 KB/s",
              page: NetworkPage(),
            ),
            NavTile(
              label: "Disk",
              stats: "W 0.00 B/s | R 3.5 MB/s",
              page: DiskPage(),
            ),
            NavTile(
              label: "GPU",
              stats: "0% 0.0GB / 4GB | 59°C",
              page: GpuPage(),
            ),
          ],
        ),
        SizedBox(height: 12),

        CompTileContainer(
          children: [
            NavTile(label: "About", stats: "", page: AboutPage()),
            CompTile(
              onTap: () {},
              leading: Text("Tip to support the development"),
              trailing: CompDrawSvg(
                iconName: "favorite",
                size: 20,
                color: kAccentColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
