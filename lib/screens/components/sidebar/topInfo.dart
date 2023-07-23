// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tabinasportfolio/screens/constants.dart';

class topInfo extends StatelessWidget {
  const topInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: Container(
        color: secondaryColor,
        child: DefaultTextStyle(
          style: primaryFont(
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(
                flex: 2,
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/profilepicture.jpg"),
              ),
              Spacer(),
              Text(
                'Krystler John Tabinas',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Software Engineer',
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  height: 1.5,
                  color: primaryColor,
                ),
              ),
              Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
