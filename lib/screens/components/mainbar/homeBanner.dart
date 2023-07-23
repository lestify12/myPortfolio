// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../../responsive.dart';
import '../../constants.dart';
import 'animatedTextStyle.dart';

class homeBanner extends StatelessWidget {
  const homeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Responsive(
          mobile: AspectRatioWidget(
            aspectRatio: 2.3,
          ),
          desktop: AspectRatioWidget(
            aspectRatio: 3,
          ),
        )
      ],
    );
  }
}

class AspectRatioWidget extends StatelessWidget {
  const AspectRatioWidget({
    super.key,
    this.aspectRatio = 3.5,
  });

  final double aspectRatio;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            child: Image.asset(
              'assets/images/background.jpg',
              fit: BoxFit.cover,
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            child: Container(
              color: secondaryColor.withOpacity(0.33),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Responsive(
                  mobile: maintitleResponsive(
                    fontsize: 30,
                  ),
                  desktop: maintitleResponsive(
                    fontsize: 50,
                  ),
                  mobileLarge: maintitleResponsive(
                    fontsize: 40,
                  ),
                  tablet: maintitleResponsive(
                    fontsize: 40,
                  ),
                ),
                //maintitleResponsive(),
                if (Responsive.isMobileLarge(context))
                  const SizedBox(height: defaultPadding / 2),
                //TYPEWRITER
                AnimatedTextStyle(),
                SizedBox(
                  height: defaultPadding,
                ),

                if (!Responsive.isMobileLarge(context))
                  ElevatedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: defaultPadding,
                        vertical: 15,
                      ),
                      backgroundColor: primaryColor,
                    ),
                    child: Text(
                      'Download CV',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class maintitleResponsive extends StatelessWidget {
  const maintitleResponsive({
    super.key,
    this.fontsize = 20,
  });

  final double fontsize;

  @override
  Widget build(BuildContext context) {
    return Text(
      'WELCOME TO MY PORTFOLIO',
      textAlign: TextAlign.center,
      style: primaryFont(
        fontSize: fontsize,
        fontWeight: FontWeight.w900,
      ),
    );
  }
}
