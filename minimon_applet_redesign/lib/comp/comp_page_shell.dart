import 'dart:ui';

import 'package:flutter/material.dart';

import '../constants.dart';

class CompPageShell extends StatelessWidget {
  const CompPageShell({super.key, required this.children});

  final List<Widget> children;

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
            left: 100,
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
                      padding: EdgeInsets.all(16.0),
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
