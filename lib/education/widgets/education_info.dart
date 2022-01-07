import 'dart:ui';

import 'package:google_fonts/google_fonts.dart';

import '../data/college_list.dart';
import 'package:flutter/material.dart';

import 'package:mohit_portfolio/responsive_widget.dart';

import '../../constants.dart';
import 'education_card.dart';
import '../../components/reusable_card.dart';

class EducationInfo extends StatelessWidget {
  EducationInfo({
    Key key,
  }) : super(key: key);

  final List<Widget> educationCards = List.generate(
    collegeList.length,
    (index) => ReusableCard(
      customColor: Colors.black87,
      cardChild: EducationCard(
        college: collegeList[index],
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      customColor: Colors.white10,
      cardChild: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF000000).withOpacity(0.46),
               image: DecorationImage(
      fit: BoxFit.fill,
      image:  AssetImage('images/Education.jpg'),
            ),
            ),
            child:Column(
              children:[
                SizedBox(height: MediaQuery.of(context).size.height*0.05),
              Center(
              child: Text(
                'Education',
                style: GoogleFonts.montserrat(
                 fontWeight: FontWeight.w500,
                 fontSize: 40,
                 letterSpacing: 1.5,
                color: Color(0xFFFFFFFF),
                 ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05),
              child: ResponsiveWidget(
                largeScreen: Wrap(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.center,

                  children: educationCards,
                ),
                smallScreen: Wrap(
                  alignment: WrapAlignment.center,
                  direction: Axis.horizontal,
                  children: educationCards,
                ),
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
