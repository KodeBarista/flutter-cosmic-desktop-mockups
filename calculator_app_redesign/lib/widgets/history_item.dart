import 'package:flutter/material.dart';

class HistoryItem extends StatelessWidget {
  const HistoryItem({
    super.key,
    required this.date,
    required this.expr,
    required this.result,
  });

  final String date;
  final String expr;
  final String result;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(date, style: TextStyle(fontSize: 14, color: Colors.white70)),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(expr, style: TextStyle(fontSize: 18, color: Colors.white70)),
              Text(result, style: TextStyle(fontSize: 24)),
            ],
          ),
        ],
      ),
    );
  }
}
