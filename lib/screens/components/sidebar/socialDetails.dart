// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class socialDetails extends StatelessWidget {
  const socialDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Container(
          margin: EdgeInsets.only(top: defaultPadding / 4),
          color: bgColor,
          child: Row(
            children: [
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/icons8-facebook.svg'),
                splashRadius: 1,
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/icons8-instagram.svg'),
                splashRadius: 1,
              ),
              IconButton(
                onPressed: () {},
                icon:
                    SvgPicture.asset('assets/icons/icons8-twitter-circled.svg'),
                splashRadius: 1,
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/icons8-linkedin.svg'),
                splashRadius: 1,
              ),
              Spacer()
            ],
          ),
        ),
      ],
    );
  }
}
