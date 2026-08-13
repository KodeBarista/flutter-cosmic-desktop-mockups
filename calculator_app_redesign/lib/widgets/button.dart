import 'package:flutter/material.dart';

import '../constants.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.child,
    this.btnColor,
     this.size = 50,
  });

  final Color? btnColor;
  final Widget child;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        constraints: BoxConstraints(maxHeight: size, maxWidth: size),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: btnColor ?? kBgColor.withAlpha(80),
        ),
        child: Center(child: child),
      ),
    );
  }
}
