import 'dart:ui';

import 'package:flutter/material.dart';

import '../constants.dart';

class CompAppPageShell extends StatelessWidget {
  const CompAppPageShell({
    super.key,
    required this.children,
    this.alpha = 100,
    this.width = 365,
  });

  final List<Widget> children;
  final int alpha;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.withAlpha(150),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/wallpaper.jpg", fit: BoxFit.cover),
          Positioned(
            top: 50,
            left: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: kBorderRadius,
                        color: kBgColor.withAlpha(alpha),
                      ),
                      width: width,
                      padding: EdgeInsets.all(0.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: children,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
