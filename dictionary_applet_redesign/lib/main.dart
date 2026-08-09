import 'package:flutter/material.dart';

import 'pages/main_page.dart';

void main() => runApp(DictionaryRedesign());

class DictionaryRedesign extends StatelessWidget {
  const DictionaryRedesign({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData().copyWith(splashFactory: NoSplash.splashFactory),
        darkTheme: ThemeData.dark().copyWith(
          splashFactory: NoSplash.splashFactory,
        ),
        debugShowCheckedModeBanner: false,
        title: "Dictionary Applet Redesign",
        home: MainPage()
    );
  }
}
