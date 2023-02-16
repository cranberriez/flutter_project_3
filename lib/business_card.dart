import 'package:flutter/material.dart';

class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 25),
          paddedItem(SizedBox(width: 50, height: 50, child: Placeholder(),)),
          paddedItem(Text("Jacob Vilevac", style: Theme.of(context).textTheme.labelLarge)),
          paddedText("Professional Slacker"),
          paddedText("(915) 867-5309"),
          paddedItem(Row(children: [
              Expanded(child: Center(child: Text("github.com/jacob"))),
              Expanded(child: Center(child: Text("vilevacj@osu.edu"))),
          ])),
        ],
      ),
    );
  }

  Widget paddedText(text) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Text(text)  
    );
  }

  Widget paddedItem(child) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: child
    );
  }
}