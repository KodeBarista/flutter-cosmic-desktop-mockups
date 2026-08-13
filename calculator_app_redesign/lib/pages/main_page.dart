import "package:flutter/material.dart";

import '../comp/comp_page_shell.dart';
import '../comp/comp_sub_header.dart';
import '../comp/comp_title_bar.dart';
import '../data/option_params.dart';
import '../widgets/build_other_buttons.dart';
import '../widgets/build_other_text_area.dart';
import '../widgets/build_regular_buttons.dart';
import '../widgets/build_regular_text_area.dart';
import '../widgets/history_view.dart';
import '../widgets/nav_bar.dart';

enum CalcView { basic, scientific, other, history }

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bool navbarVisible = false;
    final currentView = CalcView.other;
    final optionIndex = 2;
    late Widget view;
    late double colHeight;
    String viewLabel = "";

    switch (currentView) {
      case CalcView.basic:
        {
          view = Column(
            spacing: 16,
            children: [BuildRegularTextArea(), BuildRegularButtons()],
          );

          colHeight = 586;
        }

      case CalcView.scientific:
        {
          view = Column(
            spacing: 16,
            children: [
              BuildRegularTextArea(),
              BuildRegularButtons(scientific: true),
            ],
          );

          colHeight = 682;
        }

      case CalcView.other:
        {
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
              BuildOtherButtons(),
            ],
          );

          colHeight = 596;
        }
      case CalcView.history:
        view = HistoryView();
        colHeight = 586;
    }

    if (!navbarVisible) {
      if (currentView == CalcView.other) {
        viewLabel = optionParams[optionIndex].label;
      }
      if (currentView == CalcView.history) {
        viewLabel = "History";
      }
    }

    return CompPageShell(
      alpha: 150,
      width: navbarVisible ? 650 : 365,
      children: [
        CompTitleBar(navbarVisible: navbarVisible, fileMenuEntries: ["View"]),
        Container(
          height: colHeight,
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
