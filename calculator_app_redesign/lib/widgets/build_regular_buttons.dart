import 'package:flutter/material.dart';

import '../comp/comp_draw_svg.dart';
import '../constants.dart';
import 'button.dart';
import 'text_btn.dart';

class BuildRegularButtons extends StatelessWidget {
  const BuildRegularButtons({super.key});

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
              TextBtn(btnColor: kWarningColor, textColor: kBgColor, text: "C"),
              Button(
                btnColor: symbolBtnColor,
                child: CompDrawSvg(
                  iconName: "plus-minus",
                  color: kAccentColor,
                  size: 32,
                ),
              ),
              Button(
                btnColor: symbolBtnColor,
                child: CompDrawSvg(
                  iconName: "mod",
                  color: kAccentColor,
                  size: 32,
                ),
              ),
              Button(
                btnColor: symbolBtnColor,
                child: CompDrawSvg(
                  iconName: "caret",
                  color: kAccentColor,
                  size: 38,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: rowAlignment,
            children: [
              Button(
                btnColor: symbolBtnColor,
                child: CompDrawSvg(
                  iconName: "left-p",
                  color: kAccentColor,
                  size: 32,
                ),
              ),
              Button(
                btnColor: symbolBtnColor,
                child: CompDrawSvg(
                  iconName: "right-p",
                  color: kAccentColor,
                  size: 32,
                ),
              ),
              Button(
                btnColor: symbolBtnColor,
                child: CompDrawSvg(
                  iconName: "root",
                  color: kAccentColor,
                  size: 30,
                ),
              ),
              Button(
                btnColor: symbolBtnColor,
                child: CompDrawSvg(
                  iconName: "divide",
                  color: kAccentColor,
                  size: 32,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: rowAlignment,
            children: [
              TextBtn(text: "7"),
              TextBtn(text: "8"),
              TextBtn(text: "9"),
              Button(
                btnColor: symbolBtnColor,
                child: CompDrawSvg(
                  iconName: "multiply",
                  color: kAccentColor,
                  size: 32,
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
              Button(
                btnColor: symbolBtnColor,
                child: CompDrawSvg(
                  iconName: "minus",
                  color: kAccentColor,
                  size: 32,
                ),
              ),
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
                  iconName: "plus",
                  color: kAccentColor,
                  size: 32,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: rowAlignment,
            children: [
              Button(
                child: CompDrawSvg(
                  iconName: "dot",
                  color: kAccentColor,
                  size: 34,
                ),
              ),
              TextBtn(text: "0"),
              Button(
                // btnColor: kWarningColor,
                child: CompDrawSvg(
                  iconName: "clear",
                  color: kWarningColor,
                  size: 24,
                ),
              ),
              Button(
                btnColor: kAccentColor,
                child: CompDrawSvg(
                  iconName: "equals",
                  color: kBgColor,
                  size: 24,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
