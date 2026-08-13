import 'package:flutter/material.dart';

import '../comp/comp_draw_svg.dart';
import '../constants.dart';
import 'button.dart';
import 'text_btn.dart';

class BuildOtherCalcButtons extends StatelessWidget {
  const BuildOtherCalcButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final symbolBtnColor = kBgColor.withAlpha(150);
    final rowAlignment = MainAxisAlignment.spaceBetween;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Column(
        spacing: 12,
        children: [
          Row(
            mainAxisAlignment: rowAlignment,
            children: [
              TextBtn(text: "7"),
              TextBtn(text: "8"),
              TextBtn(text: "9"),
              Button(
                // btnColor: kWarningColor,
                child: CompDrawSvg(
                  iconName: "clear",
                  color: kWarningColor,
                  size: 24,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: rowAlignment,
            children: [
              TextBtn(text: "4"),
              TextBtn(text: "5"),
              TextBtn(text: "6"),
              TextBtn(btnColor: kWarningColor, textColor: kBgColor, text: "C"),
            ],
          ),
          Row(
            mainAxisAlignment: rowAlignment,
            children: [
              TextBtn(text: "1"),
              TextBtn(text: "2"),
              TextBtn(text: "3"),
              Button(
                btnColor: symbolBtnColor,
                child: CompDrawSvg(
                  iconName: "up-arrow",
                  color: Colors.grey,
                  size: 32,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: rowAlignment,
            children: [
              Button(
                // btnColor: symbolBtnColor,
                child: CompDrawSvg(
                  iconName: "plus-minus",
                  color: Colors.grey.withAlpha(100),
                  size: 34,
                ),
              ),
              TextBtn(text: "0"),
              Button(
                child: CompDrawSvg(
                  iconName: "dot",
                  color: kAccentColor,
                  size: 34,
                ),
              ),

              Button(
                btnColor: symbolBtnColor,
                child: CompDrawSvg(
                  iconName: "down-arrow",
                  color: kAccentColor,
                  size: 32,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
