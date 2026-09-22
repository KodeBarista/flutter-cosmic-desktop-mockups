import 'package:flutter/material.dart';

import '../constants.dart';

class CompSwitch extends StatelessWidget {
  const CompSwitch({super.key, this.value = false});

  final bool value;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: value ? kAccentColor : Color(0xFF919191),
      ),
      height: 24,
      width: 44,
      child: Row(
        mainAxisAlignment: value
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        children: [
          Container(
            height: 18,
            width: 18,
            margin: EdgeInsets.symmetric(horizontal: 3),
            decoration: BoxDecoration(
              color: value ? kBgColor : Color(0xFF303030),
              borderRadius: BorderRadius.circular(4.0),
            ),
          ),
        ],
      ),
    );
  }
}
