import 'package:flutter/material.dart';
import 'package:flutter_application_3/business_card.dart';
import 'package:flutter_application_3/components/centered_placeholder.dart';
import 'components/centered_placeholder.dart';

class MainScreen extends StatelessWidget {

  final String title;

  const MainScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text(title)),
          bottom: const TabBar(
            tabs: [
              Tab(text: "First",),
              Tab(text: "Second",),
              Tab(text: "Third",),
            ],)
        ),
        body: const TabBarView(
          children: [
            BusinessCard(),
            Placeholder(),
            Placeholder(),
          ])
      ),
    );
  }
}