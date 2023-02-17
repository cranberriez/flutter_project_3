import 'package:flutter/material.dart';

Widget personalInfo(context) {
  return Padding(
    padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Jacob Vilevac", style: Theme.of(context).textTheme.headlineSmall),
          Text("jacobexampleemail@email.com"),
          Text("https://github.com/somethingcool"),
      ]),
  );
}