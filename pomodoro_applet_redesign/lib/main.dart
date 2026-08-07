import 'package:flutter/material.dart';

import 'pages/main_page.dart';

void main() => runApp(PomodoroRedesign());

class PomodoroRedesign extends StatelessWidget {
  const PomodoroRedesign({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData().copyWith(splashFactory: NoSplash.splashFactory),
        darkTheme: ThemeData.dark().copyWith(
          splashFactory: NoSplash.splashFactory,
        ),
        debugShowCheckedModeBanner: false,
        title: "Pomodoro Applet Redesign",
        home: MainPage()
    );
  }
}
