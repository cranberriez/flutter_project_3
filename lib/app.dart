import 'package:flutter/material.dart';
import 'main_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Project 3",
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: MainScreen(title: 'Call Me Maybe'),
    );
  }
}
