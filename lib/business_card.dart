import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

final Uri _githuburl = Uri.parse('https://github.com');
final Uri _phonenumber = Uri.parse('tel:+1-915-867-5309');

class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 13),
          paddedItem(SizedBox(width: 80, height: 80, child: Image.asset('assets/images/thumbnail_photo.jpg'),)),
          paddedItem(Text("Jacob Vilevac", style: TextStyle(fontSize: 22))),
          paddedText("Professionally Confused"),
          TextButton(onPressed: _launchPhone, child: Text("(915) 867-5309")),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Center(child: TextButton(onPressed: _launchGithub, child: Text("https://github.com/"))),
              Center(child: TextButton(onPressed: _launchGithub, child: Text("vilevacj@osu.edu"))),
          ])
        ],
      ),
    );
  }

  Future<void> _launchGithub() async {
    if (!await launchUrl(_githuburl)) {
      throw Exception('Could not launch $_githuburl');
    }
  }

  Future<void> _launchPhone() async {
    if (!await launchUrl(_phonenumber)) {
      throw Exception('Could not launch $_phonenumber');
    }
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