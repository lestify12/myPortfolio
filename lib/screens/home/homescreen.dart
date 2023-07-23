// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tabinasportfolio/screens/homepage/homepage.dart';

import '../components/mainbar/homeBanner.dart';
import '../components/mainbar/project_Card.dart';
import '../components/mainbar/workExp_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return HomePage(children: [
      homeBanner(),
      workExperiences(),
      project(),
    ]);
  }
}
