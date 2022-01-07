import 'package:mohit_portfolio/projects/data/projects_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';
import 'project_card.dart';
import '../../components/reusable_card.dart';

class ProjectsInfo extends StatelessWidget {
  ProjectsInfo({
    Key key,
  }) : super(key: key);

  final projectCards = List.generate(
    projectsList.length,
    (index) => ReusableCard(
      customColor: Colors.black87,
      cardChild: ProjectCard(
        project: projectsList[index],
      ),
    ),
  );

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
      image:  AssetImage('images/ProjectBlurred.jpg'),
            ),
            ),
          child: Column(children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.05),
            Center(
              child: Text(
                'Projects',
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: projectCards,
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
