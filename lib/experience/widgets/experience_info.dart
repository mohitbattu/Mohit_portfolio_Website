import 'package:mohit_portfolio/components/responsive.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/experience_list.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'experience_card.dart';
import '../../components/reusable_card.dart';

class ExperienceInfo extends StatelessWidget {
  ExperienceInfo({
    Key key,
  }) : super(key: key);

  final List<Widget> experienceCards = List.generate(
    experienceList.length,
    (index) => ReusableCard(
      customColor: Colors.black87,
      cardChild: ExperienceCard(
        experience: experienceList[index],
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
      image:  AssetImage('images/ExperienceBlurred.jpg'),
            ),
            ),
         child: Column(
              children:[
            SizedBox(height: MediaQuery.of(context).size.height*0.05),
             Center(
              child: Text(
                'Work Experience',
                style: GoogleFonts.montserrat(
                 fontWeight: FontWeight.w500,
                 fontSize: 40,
                 letterSpacing: 1.5,
                color: Color(0xFFFFFFFF),
                 ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: experienceCards,
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
