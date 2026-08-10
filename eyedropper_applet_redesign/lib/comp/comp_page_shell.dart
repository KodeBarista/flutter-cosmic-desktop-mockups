import 'dart:ui';

import 'package:flutter/material.dart';

import '../constants.dart';

class CompPageShell extends StatelessWidget {
  const CompPageShell({super.key, required this.children, this.height});

  final List<Widget> children;
  final double? height;

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
            left: 120,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: kBorderRadius,
                        color: kBgColor.withAlpha(100),
                      ),
                      width: 365,
                      height: height,
                      padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: children,
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
