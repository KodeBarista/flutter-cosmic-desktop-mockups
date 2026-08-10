import 'package:flutter/material.dart';

class ColorBox extends StatelessWidget {
  const ColorBox({super.key, required this.color, this.size = 30});

  final double size;
  final int color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Color(color),
      ),
      height: size,
      width: size,
    );
  }
}
