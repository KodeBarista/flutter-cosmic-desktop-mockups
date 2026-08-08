import 'package:flutter/material.dart';

import 'pages/main_page.dart';

void main() => runApp(ClassicMenuRedesign());

class ClassicMenuRedesign extends StatelessWidget {
  const ClassicMenuRedesign({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData().copyWith(splashFactory: NoSplash.splashFactory),
        darkTheme: ThemeData.dark().copyWith(
          splashFactory: NoSplash.splashFactory,
        ),
        debugShowCheckedModeBanner: false,
        title: "Classic Menu Applet Redesign",
        home: MainPage()
    );
  }
}
