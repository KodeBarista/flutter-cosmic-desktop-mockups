import 'package:flutter/material.dart';

import 'button.dart';

class TextBtn extends StatelessWidget {
  const TextBtn({
    super.key,
    required this.text,
    this.fontColor = Colors.white,
    this.fontWeight = FontWeight.w400,
    this.fontSize =  24,
    this.btnColor,
    this.btnSize = 50,
  });

  final String text;
  final Color fontColor;
  final FontWeight fontWeight;
  final double fontSize;
  final Color? btnColor;
  final double btnSize;

  @override
  Widget build(BuildContext context) {
    return Button(
      btnColor: btnColor,
      size: btnSize,
      child: Text(
        text,
        style: TextStyle(
          color: fontColor,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
