import 'package:flutter/material.dart';

import 'square_chart.dart';

class HeaderChartRow extends StatelessWidget {
  const HeaderChartRow({
    super.key,
    required this.label,
    required this.stats,
    required this.chartValue,
    required this.chartColor,
  });

  final String label;
  final Widget stats;
  final double chartValue;
  final Color chartColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500),
        ),
        Spacer(),
        stats,
        SizedBox(width: 4),
        SquareChart(color: chartColor, value: chartValue),
      ],
    );
  }
}
