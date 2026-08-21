import 'package:flutter/material.dart';

import '../comp/comp_back_row.dart';
import '../comp/comp_parent_tile.dart';
import '../comp/comp_tile.dart';
import '../comp/comp_tile_container.dart';

const logs = """
Jul 25 05:30:11 fedora systemd[1]: Started alsa-state.service - Manage Sound Card State (restore and store).
Jul 25 05:30:11 fedora alsactl[1100]: alsactl 1.2.16 daemon started
Aug 19 23:15:04 fedora systemd[1]: Stopping alsa-state.service - Manage Sound Card State (restore and store).
Aug 19 23:15:04 fedora alsactl[1100]: alsactl daemon stopped
Aug 19 23:15:04 fedora systemd[1]: alsa-state.service: Deactivated successfully.
Aug 19 23:15:04 fedora systemd[1]: Stopped alsa-state.service - Manage Sound Card State (restore and store).
-- Boot 4c9a65767ded4ca2867c072a06299584 --
Aug 20 09:26:06 fedora systemd[1]: Started alsa-state.service - Manage Sound Card State (restore and store).
Aug 20 09:26:06 fedora alsactl[1158]: alsactl 1.2.16 daemon started""";

class ServicePage extends StatelessWidget {
  const ServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CompBackRow(label: "System services"),
            SizedBox(height: 16),

            Text(
              "alsa-state.service",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            CompTileContainer(
              children: [
                CompTile(
                  leading: Text("Description"),
                  trailing: Text("Manage sound card state (restore and store)"),
                ),
                CompTile(leading: Text("Enabled"), trailing: Text("False")),
                CompTile(leading: Text("Status"), trailing: Text("Running")),
                CompTile(leading: Text("Load state"), trailing: Text("Loaded")),
                CompTile(leading: Text("Memory"), trailing: Text("348 KB")),
                CompTile(leading: Text("CPU time"), trailing: Text("51 ms")),
                CompTile(leading: Text("Task count"), trailing: Text("1")),
                CompTile(
                  leading: Text("Unit path"),
                  trailing: Text(
                    "/org/freedesktop/systemd1/unit/alsa_2dstate_2eservice",
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),

            Row(
              spacing: 16,
              children: [
                CompParentTile(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text("Stop"),
                ),
                CompParentTile(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text("Restart"),
                ),
              ],
            ),
            SizedBox(height: 16),

            Text(
              "Logs",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 8),
            CompParentTile(
              alpha: 255,
              padding: EdgeInsets.all(16),
              child: Text(logs),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
