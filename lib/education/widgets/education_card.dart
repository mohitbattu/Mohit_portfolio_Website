import 'package:mohit_portfolio/education/models/college.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class EducationCard extends StatelessWidget {
  final College college;

  const EducationCard({
    @required this.college,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            college.universityName,
            style: kSecondaryTitleTextStyle,
            textAlign: TextAlign.center,
          ),
          // Row(mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //   Icon(Icons.location_pin,color: Colors.white,),
          //   Text(
          //   college.location,
          //   style: kBodyTextStyle,
          //   textAlign: TextAlign.center,
          // ),
          // ],),
          Text(
            college.location,
            style: kBodyTextStyle,
            textAlign: TextAlign.center,
          ),
          Text(
            college.courseName,
            style: kBodyTextStyle,
            textAlign: TextAlign.center,
          ),
          Text(
            college.year,
            style: kLabelTextStyle,
            textAlign: TextAlign.center,
          ),
          Text(
            college.credits,
            style: kBodyTextStyle,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
