import 'package:flutter/material.dart';

import '../constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.placeholder});

  final String placeholder;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: 38,
      decoration: BoxDecoration(
        border: Border.all(color: kAccentColor.withAlpha(100), width: 2),
        borderRadius: kBorderRadius,
        color: Colors.transparent,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 12),
        child: Text(placeholder),
      ),
    );
  }
}
