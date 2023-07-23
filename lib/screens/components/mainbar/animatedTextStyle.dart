// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../../responsive.dart';
import '../../constants.dart';

class AnimatedTextStyle extends StatelessWidget {
  const AnimatedTextStyle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: primaryFont(
        color: primaryColor,
        fontWeight: FontWeight.w700,
        fontSize: 30,
      ),
      child: Responsive(
        mobile: animatedtextkitResponsive(
          fontsize: 15,
        ),
        desktop: animatedtextkitResponsive(
          fontsize: 30,
        ),
        mobileLarge: animatedtextkitResponsive(
          fontsize: 25,
        ),
        tablet: animatedtextkitResponsive(
          fontsize: 25,
        ),
      ),
    );
  }
}

class animatedtextkitResponsive extends StatelessWidget {
  const animatedtextkitResponsive({
    super.key,
    this.fontsize = 10,
  });

  final double fontsize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (!Responsive.isMobileLarge(context))
          Text(
            'I\u0027m a ',
            style: (TextStyle(
              color: Colors.white,
            )),
          ),
        AnimatedTextKit(
          animatedTexts: [
            TyperAnimatedText(
              'Fresh graduate',
              textStyle: TextStyle(
                fontSize: fontsize,
              ),
            ),
            TyperAnimatedText(
              'Flutter Front End Developer',
              textStyle: TextStyle(
                fontSize: fontsize,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
