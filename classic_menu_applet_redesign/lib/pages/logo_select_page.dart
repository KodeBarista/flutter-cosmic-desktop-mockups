import 'package:flutter/material.dart';

import '../comp/comp_back_row.dart';
import '../comp/comp_draw_svg.dart';
import '../comp/comp_page_shell.dart';
import '../comp/comp_parent_tile.dart';
import '../constants.dart';

class LogoSelectPage extends StatelessWidget {
  const LogoSelectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CompPageShell(
      height: 670,
      children: [
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: 365,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CompBackRow(),
                SizedBox(height: 20.0),
                Text(
                  "Logos",
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 16.0),

                GridView.builder(
                  shrinkWrap: true,
                  itemCount: logos.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    late bool drawCircle = false;
                    final indexList = [20, 21, 23, 27];

                    if (indexList.contains(index)) {
                      drawCircle = true;
                    }

                    return Container(
                      decoration: index == 21
                          ? BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: kAccentColor, width: 2),
                            )
                          : null,
                      child: CompParentTile(
                        child: Stack(
                          alignment: AlignmentGeometry.center,
                          children: [
                            Container(
                              decoration: drawCircle
                                  ? BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    )
                                  : null,
                              child: CompDrawSvg(
                                iconName: logos[index].toLowerCase(),
                                monochrome: false,
                                size: 36,
                              ),
                            ),
                            if (index == 21)
                              Positioned(
                                left: 0,
                                bottom: 0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(8),
                                    ),
                                    color: kBgColor,
                                  ),
                                  height: 20,
                                  width: 20,
                                  padding: EdgeInsets.all(3),
                                  child: CompDrawSvg(iconName: "check"),
                                ),
                              ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

const logos = [
  "Alpine",
  "Arch",
  "Artix",
  "Asahi",
  "Cachy",
  // "Cosmic",
  "Debian",
  "Deepin",
  "Elementary",
  "Endeavour",
  "Fedora",
  "Gentoo",
  "Kali",
  "Kubuntu",
  "Manjaro",
  "Mint",
  "Mx",
  "Nix",
  "Nobara",
  "Omarchy",
  "Opensuse",
  "Parrot",
  "Pop",
  "Redhat",
  "Rocky",
  "Slackware",
  "Solus",
  "Steam-deck",
  "System76",
  "Tuxedo",
  "Ubuntu",
  "Void",
  "Zorin",
];
