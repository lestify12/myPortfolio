// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tabinasportfolio/screens/components/sidebar/skillsDetails.dart';
import 'package:tabinasportfolio/screens/components/sidebar/socialDetails.dart';
import 'package:tabinasportfolio/screens/components/sidebar/topInfo.dart';
import 'package:tabinasportfolio/screens/constants.dart';

import 'educDetails.dart';

class SideProfile extends StatelessWidget {
  const SideProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          topInfo(),
          Expanded(
            child: ScrollConfiguration(
              behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
                PointerDeviceKind.touch,
                PointerDeviceKind.mouse,
              }),
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    profileInfo(
                      title: 'Email',
                      desc: 'krystlertabinas1999@gmail.com',
                    ),
                    profileInfo(
                      title: 'Phone Number',
                      desc: '+63 9273472681',
                    ),
                    //EDUCATION DETAILS
                    educDetails(),
                    //PROGRAMMING LANGUAGES
                    progLang(),
                    //SOCIAL MEDIA
                    socialDetails(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class profileInfo extends StatelessWidget {
  const profileInfo({
    super.key,
    this.title,
    this.desc,
  });

  final String? title, desc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: DefaultTextStyle(
        style: primaryFont(
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title!,
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
              ),
            ),
            Text(
              desc!,
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
