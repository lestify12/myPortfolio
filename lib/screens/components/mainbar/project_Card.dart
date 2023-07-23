// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../models/project.dart';
import '../../constants.dart';

class project extends StatelessWidget {
  const project({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: defaultPadding, bottom: defaultPadding),
              child: Text(
                'Projects',
                style: primaryFont(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ScrollConfiguration(
              behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
                PointerDeviceKind.touch,
                PointerDeviceKind.mouse,
              }),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    sample_projects.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: defaultPadding),
                      child: projectCard(
                        project: sample_projects[index],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}

class projectCard extends StatelessWidget {
  const projectCard({
    super.key,
    required this.project,
  });

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: DefaultTextStyle(
        style: primaryFont(
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              project.title!,
            ),
            Divider(),
            Text(
              project.description!,
            ),
          ],
        ),
      ),
    );
  }
}
