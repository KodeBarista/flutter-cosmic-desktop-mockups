import 'package:flutter/material.dart';

import 'comp_tile.dart';

class CompPickColor extends StatelessWidget {
  const CompPickColor({super.key, required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return CompTile(
      leading: Text("Chart color"),
      trailing: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white70),
          borderRadius: BorderRadius.circular(4.0),
          color: color,
        ),
        height: 24,
        width: 44,
      ),
    );
  }
}
