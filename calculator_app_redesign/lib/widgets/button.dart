import 'package:flutter/material.dart';

import '../constants.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.child, this.btnColor});

  final Color? btnColor;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final double size = 65;

    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(
        maxHeight: size,
        maxWidth: size,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: btnColor ?? kBgColor.withAlpha(80),
      ),
      child: Center(child: child),
    );
  }
}
