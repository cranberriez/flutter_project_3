import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'components/personal_info.dart';
import 'components/resume_experience.dart';

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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [personalInfo(context)] + _widgetlist
          )
        ),
      ),
    );
  }

}