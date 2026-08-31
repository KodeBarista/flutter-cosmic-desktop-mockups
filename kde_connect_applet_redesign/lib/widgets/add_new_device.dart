import 'package:flutter/material.dart';

import '../comp/comp_draw_svg.dart';
import 'accent_button.dart';

const NO_DEVICE_MSG =
    "Make sure your device is on the same network and KDE Connect is open";

class AddNewDevice extends StatelessWidget {
  const AddNewDevice({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 2),
        Row(
          children: [
            Text(
              "Available devices",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Text(
          "Devices on the local network that have not been paired yet",
          style: TextStyle(fontSize: 13),
        ),
        Spacer(),
        Center(child: CompDrawSvg(iconName: "phone", size: 50)),
        SizedBox(height: 12),
        Align(
          alignment: Alignment.center,
          child: Text(
            "No devices found",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 4),
        Center(
          child: SizedBox(
            width: 500,
            child: Text(NO_DEVICE_MSG, textAlign: TextAlign.center),
          ),
        ),
        SizedBox(height: 12),
        Center(child: AccentButton(label: "Scan again")),
        Spacer(),
      ],
    );
  }
}
