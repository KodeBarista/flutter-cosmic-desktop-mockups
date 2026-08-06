import 'package:flutter/material.dart';

class CompSubHeader extends StatelessWidget {
  const CompSubHeader({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0,0,0,8),
      child: Text(title, style: TextStyle(fontWeight: FontWeight.w500)),
    );
  }
}
