import 'package:flutter/material.dart';

import '../comp/comp_draw_svg.dart';

class ControlBar extends StatelessWidget {
  const ControlBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CompDrawSvg(iconName: "repeat", size: 18),
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            CompDrawSvg(iconName: "skip-backward", size: 24),
            CompDrawSvg(iconName: "pause", size: 30),
            CompDrawSvg(iconName: "skip-forward", size: 24),
          ],
        ),
        Spacer(),
        CompDrawSvg(iconName: "speaker", size: 18),
      ],
    );
  }
}
