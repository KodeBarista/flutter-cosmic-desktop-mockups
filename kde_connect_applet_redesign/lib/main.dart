import 'package:flutter/material.dart';

import 'pages/main_window.dart';

import 'pages/messages_window.dart';
import 'pages/main_page.dart';

void main() => runApp(KdeConnectRedesign());

class KdeConnectRedesign extends StatelessWidget {
  const KdeConnectRedesign({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(splashFactory: NoSplash.splashFactory),
      darkTheme: ThemeData.dark().copyWith(
        splashFactory: NoSplash.splashFactory,
      ),
      debugShowCheckedModeBanner: false,
      title: "KDE Connect Applet Redesign",
      // home: MainPage()
      home: MainWindow(),
      // home: MessagesWindow()
    );
  }
}
