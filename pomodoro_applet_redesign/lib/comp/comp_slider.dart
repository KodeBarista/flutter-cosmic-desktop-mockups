import 'package:flutter/material.dart';

import '../constants.dart';

class CompSlider extends StatelessWidget {
  const CompSlider({super.key, required this.value});

  final double value;

  @override
  Widget build(BuildContext context) {
    final double thumbSize = 20;

    return Expanded(
      child: SizedBox(
        height: 20,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: kAccentColor.withAlpha(50),
              ),
            ),
            Positioned(
              left: 0,
              right: 150,
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
    );
  }
}
