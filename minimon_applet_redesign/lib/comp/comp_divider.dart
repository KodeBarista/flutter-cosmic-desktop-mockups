import 'package:flutter/material.dart';

class CompDivider extends StatelessWidget {
  const CompDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(height: 0, color: Colors.grey.shade300.withAlpha(50));
  }
}
