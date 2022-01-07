import 'package:mohit_portfolio/components/reusable_card.dart';
import 'package:mohit_portfolio/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'achievecard.dart';
import 'data/achievelist.dart';

class AchieveInfo extends StatelessWidget {
  AchieveInfo({Key key}) : super(key: key);
   final List<Widget> achieveCards = List.generate(
    achieveList.length,
    (index) => ReusableCard(
      customColor: Colors.black87,
      cardChild: AchieveCard(
        achieve: achieveList[index],
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
      image:  AssetImage('images/AchievementsBlurreds.jpg'),
            ),
            ),
            child: Column(children:[
            SizedBox(height: MediaQuery.of(context).size.height*0.05),
            Center(
              child: Text(
                'Achievements',
                style:GoogleFonts.montserrat(
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
                children: achieveCards,
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