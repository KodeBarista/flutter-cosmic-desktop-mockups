import "package:flutter/material.dart";

import '../comp/comp_page_shell.dart';
import '../comp/comp_sub_header.dart';
import '../comp/comp_title_bar.dart';
import '../data/option_params.dart';
import '../widgets/build_other_calc_buttons.dart';
import '../widgets/build_other_text_area.dart';
import '../widgets/build_regular_buttons.dart';
import '../widgets/build_regular_text_area.dart';
import '../widgets/history_view.dart';
import '../widgets/nav_bar.dart';

enum CurrentView { basicCalc, specialCalc, history }

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bool navbarVisible = true;
    final currentView = CurrentView.basicCalc;
    final optionIndex = 0;
    late Widget view;
    String viewLabel = "";

    switch (currentView) {
      case CurrentView.basicCalc:
        view = Column(
          spacing: 16,
          children: [BuildRegularTextArea(), BuildRegularButtons()],
        );

      case CurrentView.specialCalc:
        view = Column(
          spacing: 16,
          children: [
            BuildOtherTextArea(
              height: navbarVisible ? 320 : 300,
              filterOne: optionParams[optionIndex].f1,
              valueOne: optionParams[optionIndex].v1,
              filterTwo: optionParams[optionIndex].f2,
              valueTwo: optionParams[optionIndex].v2,
            ),
            BuildOtherCalcButtons(),
          ],
        );
      case CurrentView.history:
        view = HistoryView();
    }

    if (!navbarVisible) {
      if (currentView == CurrentView.specialCalc) {
        viewLabel = optionParams[optionIndex].label;
      }
      if (currentView == CurrentView.history) {
        viewLabel = "History";
      }
    }

    return CompPageShell(
      alpha: 150,
      width: navbarVisible ? 650 : 365,
      children: [
        CompTitleBar(navbarVisible: navbarVisible, fileMenuEntries: ["View"]),
        Padding(
          padding: EdgeInsets.only(bottom: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 12,
            children: [
              if (navbarVisible) NavBar(optionIndex: optionIndex),
              Container(
                constraints: BoxConstraints(maxWidth: 333),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (viewLabel.isNotEmpty) CompSubHeader(title: viewLabel),
                    view,
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
