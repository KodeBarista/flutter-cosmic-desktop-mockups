import 'package:flutter/material.dart';

class SquareChart extends StatelessWidget {
  const SquareChart({super.key, required this.color, this.value = 50});

  final Color color;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white70, width: 1.0),
        borderRadius: BorderRadius.circular(4.0),
      ),
      height: 44,
      width: 44,
      margin: EdgeInsets.symmetric(horizontal: 8),
      padding: EdgeInsets.only(top: 44 - (value * 0.44)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(4),
            bottomRight: Radius.circular(4),
          ),
          color: color,
        ),
      ),
    );
  }
}
