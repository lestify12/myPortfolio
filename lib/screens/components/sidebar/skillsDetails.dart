// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../constants.dart';

class progLang extends StatelessWidget {
  const progLang({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: primaryFont(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(),
          Padding(
            padding: const EdgeInsets.only(
                bottom: defaultPadding, top: defaultPadding / 4),
            child: Text(
              'Skills',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          proglangLinearProgressBar(
            title: 'Object-Oriented',
            languages: 'C++, Java',
            percent: 0.71,
          ),
          proglangLinearProgressBar(
            title: 'Web Development',
            languages: 'HTML, CSS, Javascript',
            percent: 0.57,
          ),
          proglangLinearProgressBar(
            title: 'Software Development',
            languages: 'Windows Form .NET',
            percent: 0.51,
          ),
          proglangLinearProgressBar(
            title: 'Mobile Development',
            languages: 'Flutter',
            percent: 0.72,
          ),
          proglangLinearProgressBar(
            title: 'Database Management',
            languages: 'Firebase, MySQL',
            percent: 0.44,
          ),
          proglangLinearProgressBar(
            title: 'Data Management',
            languages: 'Microsoft Excel, Power BI',
            percent: 0.41,
          ),
          proglangLinearProgressBar(
            title: 'Other Skills',
            languages: 'Adobe Photoshop, Adobe Premier Pro, Microsoft Office',
            percent: 0.41,
          ),
        ],
      ),
    );
  }
}

class proglangLinearProgressBar extends StatelessWidget {
  const proglangLinearProgressBar({
    super.key,
    required this.title,
    required this.languages,
    required this.percent,
  });

  final String title;
  final String languages;
  final double percent;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: percent),
      duration: defaultDuration,
      builder: ((context, double value, child) => Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: defaultPadding / 10),
                    child: Text(
                      title,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Text((value * 100).toInt().toString() + '%'),
                ],
              ),
              SizedBox(
                height: defaultPadding / 10,
              ),
              Row(
                children: [
                  Flexible(
                    child: Text(
                      languages,
                      style: TextStyle(
                        fontSize: 13,
                        color: primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: defaultPadding / 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: defaultPadding / 8),
                child: LinearProgressIndicator(
                  value: value,
                  color: primaryColor,
                  backgroundColor: darkColor,
                ),
              ),
            ],
          )),
    );
  }
}
