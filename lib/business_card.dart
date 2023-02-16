import 'package:flutter/material.dart';

class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 25),
          paddedItem(SizedBox(width: 100, height: 100, child: Image.asset('assets/images/thumbnail_photo.jpg'),)),
          paddedItem(Text("Jacob Vilevac", style: Theme.of(context).textTheme.labelLarge)),
          paddedText("Professionally Confused"),
          paddedText("(915) 867-5309"),
          paddedItem(Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Center(child: Text("https://github.com/")),
              Center(child: Text("vilevacj@osu.edu")),
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