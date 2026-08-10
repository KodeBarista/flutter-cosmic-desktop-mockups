import 'package:flutter/material.dart';

import 'pages/main_page.dart';

void main() => runApp(EyedropperRedesign());

class EyedropperRedesign extends StatelessWidget {
  const EyedropperRedesign({super.key});

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
