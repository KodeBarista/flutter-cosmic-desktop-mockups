import 'package:flutter/material.dart';

import '../constants.dart';

class CompSlider extends StatelessWidget {
  const CompSlider({super.key, required this.value});

  final double value;

  @override
  Widget build(BuildContext context) {
    final double thumbSize = 20;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      spacing: 20,
      children: [
        Text("${value.ceil()}"),
        SizedBox(
          height: 20,
          width: 150,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: Color(0xFF919191),
                ),
              ),
              Positioned(
                left: 0,
                right: 120 - value,
                child: Container(
                  height: 4,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: kAccentColor,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                ),
              ),
              Positioned(
                left: value + 10,
                child: Container(
                  height: thumbSize,
                  width: thumbSize,
                  decoration: BoxDecoration(
                    color: kAccentColor,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
