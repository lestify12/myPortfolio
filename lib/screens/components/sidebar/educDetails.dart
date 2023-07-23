// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../constants.dart';

class educDetails extends StatelessWidget {
  const educDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.only(
              bottom: defaultPadding, top: defaultPadding / 4),
          child: Text(
            'Education',
            style: primaryFont(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        educationInfo(
          name: 'College',
          course: 'BS in Computer Engineering',
          school: 'Cebu Institute of Technology-University',
          graduated: '2023',
        ),
        educationInfo(
          name: 'Senior High School',
          course: 'STEM',
          school: 'Sotero B. Cabahug FORUM for Literacy',
          graduated: '2019',
        ),
      ],
    );
  }
}

class educationInfo extends StatelessWidget {
  const educationInfo({
    super.key,
    this.name,
    this.course,
    this.school,
    this.graduated,
  });

  final String? name, course, school, graduated;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: defaultPadding / 2),
        child: DefaultTextStyle(
          style: primaryFont(
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Text(
                    name!,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    course!,
                    style: TextStyle(),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    school!,
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    graduated!,
                    style: TextStyle(
                      color: primaryColor,
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
