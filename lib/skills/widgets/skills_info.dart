import 'package:mohit_portfolio/skills/data/skills.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';
import '../../components/reusable_card.dart';
import 'skill_card.dart';
import 'skill_category_card.dart';

class SkillsInfo extends StatelessWidget {
  SkillsInfo({
    Key key,
  }) : super(key: key);

  final List<SkillCard> languageSkillCards = languagesMap.entries
      .map((entry) => SkillCard(
            label: entry.key,
            icon: entry.value,
          ))
      .toList();

  final List<SkillCard> technologiesSkillCards = technologiesMap.entries
      .map((entry) => SkillCard(
            label: entry.key,
            icon: entry.value,
          ))
      .toList();

  final List<SkillCard> dbSkillCards = dbMap.entries
      .map((entry) => SkillCard(label: entry.key, icon: entry.value))
      .toList();

  final List<Widget> toolsSkillCards = toolsMap.entries
      .map((entry) => SkillCard(label: entry.key, icon: entry.value))
      .toList();

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      customColor: Colors.white10,
      cardChild:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
              color: Color(0xFF000000).withOpacity(0.46),
               image: DecorationImage(
      fit: BoxFit.fill,
      image:  AssetImage('images/SkillsBlurred.jpg'),
            ),
            ),
            child:Column(children:[
              SizedBox(height: MediaQuery.of(context).size.height*0.05),
              Center(
              child: Text(
                'Skills',
                style: GoogleFonts.montserrat(
                 fontWeight: FontWeight.w500,
                 fontSize: 40,
                 letterSpacing: 1.5,
                color: Color(0xFFFFFFFF),
                 ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            SkillCategoryCard(
              categoryTitle: 'Languages',
              cardsList: languageSkillCards,
            ),
            SkillCategoryCard(
              categoryTitle: 'Technologies/Frameworks',
              cardsList: technologiesSkillCards,
            ),
            SkillCategoryCard(
              categoryTitle: 'Databases',
              cardsList: dbSkillCards,
            ),
            SkillCategoryCard(
              categoryTitle: 'Tools',
              cardsList: toolsSkillCards,
            ),
            ],
            ),
            ),
          ],
        ),
    );
  }
}
