import 'package:flutter/material.dart';

import 'pages/main_page.dart';

void main() => runApp(OllamaRedesign());

class OllamaRedesign extends StatelessWidget {
  const OllamaRedesign({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData().copyWith(splashFactory: NoSplash.splashFactory),
        darkTheme: ThemeData.dark().copyWith(
          splashFactory: NoSplash.splashFactory,
        ),
        debugShowCheckedModeBanner: false,
        title: "Ollama Applet Redesign",
        home: MainPage()
    );
  }
}
