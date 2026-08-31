import 'package:flutter/material.dart';

import '../comp/comp_divider.dart';
import '../comp/comp_draw_svg.dart';
import '../comp/comp_parent_tile.dart';
import '../comp/comp_tile.dart';
import 'accent_button.dart';
import 'option_tile.dart';

class ConnectedDevice extends StatelessWidget {
  const ConnectedDevice({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CompDrawSvg(iconName: "phone", size: 80),
            Expanded(
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 4,
                    children: [
                      Text(
                        "Moto G64 5G",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        spacing: 8,
                        children: [
                          CompDrawSvg(iconName: "battery"),
                          Text("68% · Charging"),
                        ],
                      ),
                      Row(
                        spacing: 8,
                        children: [
                          CompDrawSvg(iconName: "cellular"),
                          Text("4G+"),
                          CompDrawSvg(iconName: "bluetooth"),
                          Text("Not connected"),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  AccentButton(label: "Unpair", color: Color(0xFFFDA1A0)),
                  SizedBox(width: 12),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 24),

        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            AccentButton(iconName: "browse", label: "Browse..."),
            AccentButton(iconName: "share", label: "Send..."),
            AccentButton(iconName: "find", label: "Find"),
            AccentButton(iconName: "sms", label: "SMS..."),
            AccentButton(iconName: "ping", label: "Ping"),
            AccentButton(iconName: "clipboard", label: "Share"),
          ],
        ),
        SizedBox(height: 16),
        CompDivider(),
        SizedBox(height: 16),

        CompParentTile(
          child: CompTile(
            leading: Row(
              spacing: 16,
              children: [
                CompDrawSvg(iconName: "term", size: 24),
                Text("Configure commands"),
              ],
            ),
            trailing: CompDrawSvg(iconName: "right"),
          ),
        ),
        SizedBox(height: 16),

        Expanded(
          child: SingleChildScrollView(
            child: Column(
              spacing: 8,
              children: [
                OptionTile(
                  iconName: "battery",
                  title: "Battery monitor",
                  subtitle: "Display the phone's battery level and charging state in the panel",
                ),
                OptionTile(
                  iconName: "clipboard",
                  title: "Clipboard sync",
                  subtitle: "Auto share clipboard content between devices",
                ),
                OptionTile(
                  iconName: "cellular",
                  title: "Connectivity report",
                  subtitle: "Show mobile signal strength & network type (4G, 5G, etc)",
                ),
                OptionTile(
                  iconName: "contacts",
                  title: "Contacts",
                  subtitle: "Sync phone contacts so SMS show names instead of numbers",
                ),
                OptionTile(
                  iconName: "find",
                  title: "Find my phone",
                  subtitle: "Ring your phone at full volume to help locate it",
                ),
                OptionTile(
                  iconName: "media_control",
                  title: "Media control",
                  subtitle:
                      "Control media playback on your phone from the desktop",
                ),
                OptionTile(
                  iconName: "notifications",
                  title: "Notifications",
                  subtitle: "Receive phone notifications on desktop",
                ),
                OptionTile(
                  iconName: "ping",
                  title: "Ping",
                  subtitle: "Send and receive pings to verify connectivity with paired devices",
                ),
                OptionTile(
                  iconName: "term",
                  title: "Run commands",
                  subtitle: "Execute commands on the desktop from your phone",
                ),

                OptionTile(
                  iconName: "share",
                  title: "Share Files",
                  subtitle: "Execute commands on the desktop from your phone",
                ),
                OptionTile(
                  iconName: "sms",
                  title: "SMS Messages",
                  subtitle: "Execute commands on the desktop from your phone",
                ),
                OptionTile(
                  iconName: "volume",
                  title: "System volume",
                  subtitle: "Execute commands on the desktop from your phone",
                ),
                OptionTile(
                  iconName: "call",
                  title: "Telephony",
                  subtitle: "Show desktop notifications for incoming, missed & active calls",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
