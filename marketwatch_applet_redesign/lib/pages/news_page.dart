import 'package:flutter/material.dart';

import '../comp/comp_back_row.dart';
import '../comp/comp_page_shell.dart';
import '../comp/comp_tab_bar.dart';
import '../widgets/news_card.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final index = 0;

    return CompPageShell(
      children: [
        CompBackRow(),
        SizedBox(height: 20.0),

        Text(
          "News",
          style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 16.0),

        CompTabBar(
          items: [Text("US Market"), Text("Portfolio")],
          selectedIndex: index,
        ),
        SizedBox(height: 8),

        if (index == 0) ...[
          NewsCard(
            title:
                "SpaceX, Doximity, Trade Desk, Rigetti, Coherent, and more stocks that explains today's market.",
            url: "barrons.com",
            time: "54",
          ),

          NewsCard(
            title:
                "Trade Desk stock tumbles as things go from bad to worse. Here come the downgrades.",
            url: "barrons.com",
            time: "31",
          ),

          NewsCard(
            title: "AI stock jumps after unusual Nvidia hedge fund deal.",
            url: "gurufocus.com",
            time: "7",
          ),
        ],

        if (index == 1)
          NewsCard(
            title:
                "SpaceX, Doximity, Trade Desk, Rigetti, Coherent, and more stocks that explains today's market.",
            url: "barrons.com",
            time: "54",
          ),
      ],
    );
  }
}
