import 'package:flutter/material.dart';

import 'button.dart';

class TextBtn extends StatelessWidget {
  const TextBtn({
    super.key,
    required this.text,
    this.textColor = Colors.white,
    this.btnColor,
  });

  final String text;
  final Color textColor;
  final Color? btnColor;

  @override
  Widget build(BuildContext context) {
    return Button(
      btnColor: btnColor,
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 28,
        ),
      ),
    );
  }
}
