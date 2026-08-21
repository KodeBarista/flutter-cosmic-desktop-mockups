import 'package:flutter/material.dart';

import 'pages/main_page.dart';

void main() => runApp(CtlDashRedesign());

class CtlDashRedesign extends StatelessWidget {
  const CtlDashRedesign({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData().copyWith(splashFactory: NoSplash.splashFactory),
        darkTheme: ThemeData.dark().copyWith(
          splashFactory: NoSplash.splashFactory,
        ),
        debugShowCheckedModeBanner: false,
        title: "CTL Dash App Redesign",
        home: MainPage()
    );
  }
}
