import 'package:flutter/material.dart';

import 'pages/main_page.dart';

void main() => runApp(MinimonRedesign());

class MinimonRedesign extends StatelessWidget {
  const MinimonRedesign({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(splashFactory: NoSplash.splashFactory),
      darkTheme: ThemeData.dark().copyWith(
        splashFactory: NoSplash.splashFactory,
      ),
      debugShowCheckedModeBanner: false,
      title: "Minimon Applet Redesign",
      home: MainPage()
    );
  }
}
