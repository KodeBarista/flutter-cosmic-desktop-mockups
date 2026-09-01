import 'package:flutter/material.dart';

class CompDivider extends StatelessWidget {
  const CompDivider({super.key, this.alpha = 50});

  final int alpha;

  @override
  Widget build(BuildContext context) {
    return Divider(height: 0, color: Colors.grey.shade300.withAlpha(alpha));
  }
}
