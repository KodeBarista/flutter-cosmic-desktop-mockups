import 'package:flutter/material.dart';

import '../comp/comp_draw_svg.dart';
import '../constants.dart';
import 'button.dart';
import 'text_btn.dart';

class BuildRegularButtons extends StatelessWidget {
  const BuildRegularButtons({super.key, this.scientific = false});

  final bool scientific;

  @override
  Widget build(BuildContext context) {
    final symbolBtnColor = kBgColor.withAlpha(150);
    final rowAlignment = MainAxisAlignment.spaceBetween;
    final double rowSpacing = 8;
    final double sFontSize = 20;
    final double btnSize = scientific ? 50 : 68;
    final double fontSize = scientific ? 24 : 30;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Column(
        spacing: 12,
        children: [
          if (scientific) ...[
            Row(
              mainAxisAlignment: rowAlignment,
              spacing: rowSpacing,
              children: [
                Button(
                  btnColor: symbolBtnColor,
                  child: CompDrawSvg(
                    iconName: "root",
                    color: kAccentColor,
                    size: 28,
                  ),
                ),
                Button(
                  btnColor: symbolBtnColor,
                  child: CompDrawSvg(
                    iconName: "pi",
                    color: kAccentColor,
                    size: 24,
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
                Button(
                  btnColor: symbolBtnColor,
                  child: CompDrawSvg(
                    iconName: "exclamation",
                    color: kAccentColor,
                    size: 30,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: rowAlignment,
              spacing: rowSpacing,
              children: [
                TextBtn(
                  btnColor: symbolBtnColor,
                  text: "Deg",
                  fontColor: kAccentColor,
                  fontSize: sFontSize,
                ),
                TextBtn(
                  btnColor: symbolBtnColor,
                  text: "sin",
                  fontColor: kAccentColor,
                  fontSize: sFontSize,
                ),
                TextBtn(
                  btnColor: symbolBtnColor,
                  text: "cos",
                  fontColor: kAccentColor,
                  fontSize: sFontSize,
                ),
                TextBtn(
                  btnColor: symbolBtnColor,
                  text: "tan",
                  fontColor: kAccentColor,
                  fontSize: sFontSize,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: rowAlignment,
              spacing: 8,
              children: [
                TextBtn(
                  btnColor: symbolBtnColor,
                  text: "Inv",
                  fontColor: kAccentColor,
                  fontSize: sFontSize,
                ),
                TextBtn(
                  btnColor: symbolBtnColor,
                  text: "e",
                  fontColor: kAccentColor,
                  fontSize: sFontSize,
                ),
                TextBtn(
                  btnColor: symbolBtnColor,
                  text: "In",
                  fontColor: kAccentColor,
                  fontSize: sFontSize,
                ),
                TextBtn(
                  btnColor: symbolBtnColor,
                  text: "log",
                  fontColor: kAccentColor,
                  fontSize: sFontSize,
                ),
              ],
            ),
          ],
          Row(
            mainAxisAlignment: rowAlignment,
            spacing: rowSpacing,
            children: [
              TextBtn(
                btnSize: btnSize,
                btnColor: kWarningColor,
                fontColor: kBgColor,
                fontSize: 32,
                text: "C",
              ),
              Button(
                size: btnSize,

                btnColor: symbolBtnColor,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      left: 12,
                      child: CompDrawSvg(
                        iconName: "left-p",
                        color: kAccentColor,
                        size: 32,
                      ),
                    ),
                    Positioned(
                      right: 12,
                      child: CompDrawSvg(
                        iconName: "right-p",
                        color: kAccentColor,
                        size: 32,
                      ),
                    ),
                  ],
                ),
              ),
              Button(
                size: btnSize,

                btnColor: symbolBtnColor,
                child: CompDrawSvg(
                  iconName: "mod",
                  color: kAccentColor,
                  size: 32,
                ),
              ),
              Button(
                size: btnSize,

                btnColor: symbolBtnColor,
                child: CompDrawSvg(
                  iconName: "divide",
                  color: kAccentColor,
                  size: 38,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: rowAlignment,
            spacing: rowSpacing,
            children: [
              TextBtn(btnSize: btnSize, text: "7", fontSize: fontSize),
              TextBtn(btnSize: btnSize, text: "8", fontSize: fontSize),
              TextBtn(btnSize: btnSize, text: "9", fontSize: fontSize),
              Button(
                btnColor: symbolBtnColor,
                size: btnSize,
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
            spacing: rowSpacing,
            children: [
              TextBtn(btnSize: btnSize, text: "4", fontSize: fontSize),
              TextBtn(btnSize: btnSize, text: "5", fontSize: fontSize),
              TextBtn(btnSize: btnSize, text: "6", fontSize: fontSize),
              Button(
                btnColor: symbolBtnColor,
                size: btnSize,
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
            spacing: rowSpacing,
            children: [
              TextBtn(btnSize: btnSize, text: "1", fontSize: fontSize),
              TextBtn(btnSize: btnSize, text: "2", fontSize: fontSize),
              TextBtn(btnSize: btnSize, text: "3", fontSize: fontSize),
              Button(
                btnColor: symbolBtnColor,
                size: btnSize,
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
            spacing: rowSpacing,
            children: [
              Button(
                size: btnSize,
                child: CompDrawSvg(
                  iconName: "dot",
                  color: kAccentColor,
                  size: 34,
                ),
              ),
              TextBtn(btnSize: btnSize, text: "0", fontSize: fontSize),
              Button(
                size: btnSize,
                child: CompDrawSvg(
                  iconName: "clear",
                  color: kWarningColor,
                  size: 24,
                ),
              ),
              Button(
                size: btnSize,
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
