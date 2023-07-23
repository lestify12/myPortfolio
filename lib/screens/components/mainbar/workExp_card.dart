// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tabinasportfolio/responsive.dart';

import '../../../models/workexperiences.dart';
import '../../constants.dart';

class workExperiences extends StatelessWidget {
  const workExperiences({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: defaultPadding),
              child: Text(
                'Work Experiences',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ],
        ),
        SizedBox(
          height: defaultPadding,
        ),
        Responsive(
          mobile: ExperiencesGridView(
            childAspectRatio: 2,
            crossAxisCount: 1,
          ),
          mobileLarge: ExperiencesGridView(
            childAspectRatio: 3,
            crossAxisCount: 1,
          ),
          tablet: ExperiencesGridView(
            childAspectRatio: 1,
            crossAxisCount: 3,
          ),
          desktop: ExperiencesGridView(
            childAspectRatio: 1.1,
            crossAxisCount: 3,
          ),
        ),
      ],
    );
  }
}

class ExperiencesGridView extends StatelessWidget {
  const ExperiencesGridView({
    super.key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  });

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: work_experience.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => workexpCard(
        workexp: work_experience[index],
      ),
    );
  }
}

class workexpCard extends StatelessWidget {
  const workexpCard({
    super.key,
    required this.workexp,
  });

  final workexp;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            workexp.name!,
            style: Theme.of(context).textTheme.subtitle2,
            maxLines: 2,
          ),
          Text(
            workexp.year!,
            style: TextStyle(
              color: primaryColor,
            ),
          ),
          Text(
            workexp.position!,
            style: TextStyle(color: Colors.white),
          ),
          Divider(),
          Expanded(
            child: ScrollConfiguration(
              behavior:
                  ScrollConfiguration.of(context).copyWith(scrollbars: false),
              child: SingleChildScrollView(
                child: Text(
                  workexp.description!,
                  style: TextStyle(height: 2),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
