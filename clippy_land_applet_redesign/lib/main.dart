import 'package:flutter/material.dart';

import 'pages/main_page.dart';

void main() => runApp(ClippyLandRedesign());

class ClippyLandRedesign extends StatelessWidget {
  const ClippyLandRedesign({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData().copyWith(splashFactory: NoSplash.splashFactory),
        darkTheme: ThemeData.dark().copyWith(
          splashFactory: NoSplash.splashFactory,
        ),
        debugShowCheckedModeBanner: false,
        title: "Clippy Land Applet Redesign",
        home: MainPage()
    );
  }
}
