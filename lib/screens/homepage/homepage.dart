// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:tabinasportfolio/screens/constants.dart';

import '../../responsive.dart';
import '../components/sidebar/sideProfile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: Responsive.isDesktop(context)
            ? null
            : AppBar(
                backgroundColor: bgColor,
                leading: Builder(
                  builder: (context) => IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: Icon(Icons.person),
                  ),
                )),
        drawer: SideProfile(),
        body: Center(
          child: Container(
            color: Color(0xFF161927),
            constraints: BoxConstraints(maxWidth: maxWidth),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (Responsive.isDesktop(context))
                  Expanded(
                    flex: 2,
                    child: SideProfile(),
                  ),
                SizedBox(
                  width: defaultPadding,
                ),
                Expanded(
                  flex: 7,
                  child: SingleChildScrollView(
                    child: Column(children: [
                      ...children,
                      SizedBox(
                        height: defaultPadding,
                      )
                    ]),
                  ),
                ),
                SizedBox(
                  width: defaultPadding,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
