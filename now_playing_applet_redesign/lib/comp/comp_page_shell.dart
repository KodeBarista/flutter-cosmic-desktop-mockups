import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:now_playing_applet_redesign/comp/comp_draw_svg.dart';
import 'package:now_playing_applet_redesign/data/media_info.dart';

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
            top: 43,
            left: 100,
            child: _FrostContainer(
              child: Row(
                children: [
                  CompDrawSvg(iconName: "skip-backward", size: 20),
                  SizedBox(width: 12),
                  CompDrawSvg(iconName: "pause", size: 20),
                  SizedBox(width: 12),
                  CompDrawSvg(iconName: "skip-forward", size: 20),
                  SizedBox(width: 20),
                  Text(
                    mediaList[4].title,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _FrostContainer(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: children,
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

class _FrostContainer extends StatelessWidget {
  const _FrostContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: kBorderRadius,
            color: kBgColor.withAlpha(100),
          ),
          padding: EdgeInsets.all(16),
          width: 365,
          child: child,
        ),
      ),
    );
  }
}
