import 'package:flutter/material.dart';
import 'main_screen.dart';
import 'navbar.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Project 3",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MainScreen(title: 'Call Me Maybe'),
    );
  }
}
