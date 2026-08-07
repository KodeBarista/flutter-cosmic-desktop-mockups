import 'package:flutter/material.dart';

import 'pages/main_page.dart';

void main() => runApp(NowPlayingRedesign());

class NowPlayingRedesign extends StatelessWidget {
  const NowPlayingRedesign({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData().copyWith(splashFactory: NoSplash.splashFactory),
        darkTheme: ThemeData.dark().copyWith(
          splashFactory: NoSplash.splashFactory,
        ),
        debugShowCheckedModeBanner: false,
        title: "Now Playing Applet Redesign",
        home: MainPage()
    );
  }
}
