import 'package:flutter/material.dart';

import 'pages/main_page.dart';

void main() => runApp(CalculatorRedesign());

class CalculatorRedesign extends StatelessWidget {
  const CalculatorRedesign({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData().copyWith(splashFactory: NoSplash.splashFactory),
        darkTheme: ThemeData.dark().copyWith(
          splashFactory: NoSplash.splashFactory,
        ),
        debugShowCheckedModeBanner: false,
        title: "Calculator App Redesign",
        home: MainPage()
    );
  }
}
