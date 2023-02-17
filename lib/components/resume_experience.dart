import 'package:flutter/material.dart';

Widget resumeExperience(context) {
  return Padding(
    padding: const EdgeInsets.only(top: 20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Software Developer Intern", style: Theme.of(context).textTheme.bodyText1),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Walmart"),
            Text("2012-2048"),
            Text("Beaverton, OR"),
          ]),
        Text("Lorem ipsum dolor sit amet, consecut asdgfsptie lit, sed do elsius tempor incidunt ut labore et dolaor magnda aliquadf. ut nemi ad minim nvianm.")
      ]),
  );
}