import 'package:flutter/material.dart';

import '../constants.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({
    super.key,
    required this.status,
    this.useAccent = false,
  });

  final String status;
  final bool useAccent;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green.withAlpha(20),
        border: Border.all(color: useAccent ? Colors.green : kAccentColor),
        borderRadius: BorderRadius.circular(6),
      ),
      padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 1.0),
      child: Text(
        status,
        style: TextStyle(
          color: useAccent ? Colors.green : null,
          fontSize: 12,
        ),
      ),
    );
  }
}
