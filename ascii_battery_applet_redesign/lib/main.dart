import 'package:flutter/material.dart';

import 'pages/main_page.dart';

void main() => runApp(AsciiBatteryRedesign());

class AsciiBatteryRedesign extends StatelessWidget {
  const AsciiBatteryRedesign({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData().copyWith(splashFactory: NoSplash.splashFactory),
        darkTheme: ThemeData.dark().copyWith(
          splashFactory: NoSplash.splashFactory,
        ),
        debugShowCheckedModeBanner: false,
        title: "ASCII Battery Applet Redesign",
        home: MainPage()
    );
  }
}
