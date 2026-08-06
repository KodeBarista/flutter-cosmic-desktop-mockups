import 'package:flutter/material.dart';

import 'pages/main_page.dart';

void main() => runApp(YapcapRedesign());

class YapcapRedesign extends StatelessWidget {
  const YapcapRedesign({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(splashFactory: NoSplash.splashFactory),
      darkTheme: ThemeData.dark().copyWith(
        splashFactory: NoSplash.splashFactory,
      ),
      debugShowCheckedModeBanner: false,
      title: "Yapcap Applet Redesign",
      home: MainPage()
    );
  }
}
