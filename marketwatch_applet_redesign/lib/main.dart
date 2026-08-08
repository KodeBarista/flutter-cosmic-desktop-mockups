import 'package:flutter/material.dart';

import 'pages/main_page.dart';

void main() => runApp(MarketWatchRedesign());

class MarketWatchRedesign extends StatelessWidget {
  const MarketWatchRedesign({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(splashFactory: NoSplash.splashFactory),
      darkTheme: ThemeData.dark().copyWith(
        splashFactory: NoSplash.splashFactory,
      ),
      debugShowCheckedModeBanner: false,
      title: "MarketWatch Applet Redesign",
      home: MainPage()
    );
  }
}
