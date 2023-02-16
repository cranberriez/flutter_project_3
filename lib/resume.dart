import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Resume extends StatelessWidget {
  const Resume({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Widget> _widgetlist = List.generate(
        10,
            (i) => resumeExperience(context)
    );

    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [personalInfo(context)] + _widgetlist),
      ),
    );
  }

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

}