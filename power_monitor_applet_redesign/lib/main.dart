import 'package:flutter/material.dart';

import 'pages/main_page.dart';

void main() => runApp(PowerMonitorRedesign());

class PowerMonitorRedesign extends StatelessWidget {
  const PowerMonitorRedesign({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData().copyWith(splashFactory: NoSplash.splashFactory),
        darkTheme: ThemeData.dark().copyWith(
          splashFactory: NoSplash.splashFactory,
        ),
        debugShowCheckedModeBanner: false,
        title: "Power Monitor Applet Redesign",
        home: MainPage()
    );
  }
}
