import 'package:mohit_portfolio/Home/Home.dart';
import 'package:mohit_portfolio/components/round_icon_button.dart';
import 'package:mohit_portfolio/constants.dart';
import 'package:mohit_portfolio/profile_image_visibility.dart';
import 'package:mohit_portfolio/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:visibility_detector/visibility_detector.dart';

import 'Achievements/achieveinfo.dart';
import 'Home/HomeDesktop.dart';
import 'animations/bottomAnimation.dart';
import 'components/contact_info.dart';
import 'education/widgets/education_info.dart';
import 'education/widgets/socialMedialIcon.dart';
import 'experience/widgets/experience_info.dart';
import 'components/nav_button.dart';
import 'components/nav_header.dart';
import 'components/profile_info.dart';
import 'projects/widgets/projects_info.dart';
import 'skills/widgets/skills_info.dart';

class ProfilePage extends StatelessWidget {
  final profileKey = GlobalKey();
  final experienceKey = GlobalKey();
  final educationKey = GlobalKey();
  final skillsKey = GlobalKey();
  final projectsKey = GlobalKey();
  final contactKey = GlobalKey();
  final achievementsKey = GlobalKey();
  final homeKey = GlobalKey();
  final scrollController = ScrollController();
  final scrollDuration = Duration(milliseconds: 500);

  void scrollToKey(BuildContext context, GlobalKey key) {
    RenderBox box = key.currentContext.findRenderObject();
    Offset position = box.localToGlobal(Offset.zero);
    var currentOffset = scrollController.offset;
    var destinationOffset = position.dy;

    scrollController.animateTo(destinationOffset + currentOffset - 50.0,
        duration: scrollDuration, curve: Curves.fastLinearToSlowEaseIn);

    if (ResponsiveWidget.isSmallScreen(context)) Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> navButtons(context) => [
          MaterialButton(
            hoverColor:  Color(0xFF2BC037),
            child: Text("About",style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),),
            onPressed: () {
              scrollToKey(context, profileKey);
            },
          ),
          MaterialButton(
            hoverColor:  Color(0xFFAF2BC0),
            child: Text("Achievements",style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),),
            onPressed: () {
              scrollToKey(context, achievementsKey);
            },
          ),
          MaterialButton(
            hoverColor:  Color(0xFFC07F2B),
            child: Text("Experience",style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),),
            onPressed: () {
              scrollToKey(context, experienceKey);
            },
          ),
          MaterialButton(
            hoverColor:  Color(0xFF2B5FC0),
            child: Text("Education",style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),),
            onPressed: () {
              scrollToKey(context, educationKey);
            },
          ),
           MaterialButton(
            hoverColor:  Color(0xFFA72BC0),
            child: Text("Projects",style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),),
            onPressed: () {
              scrollToKey(context, projectsKey);
            },
          ),
          MaterialButton(
            hoverColor:  Color(0xFF2BC037),
            child: Text("Skills",style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),),
            onPressed: () {
              scrollToKey(context, skillsKey);
            },
          ),
          MaterialButton(
            hoverColor:  Color(0xFFC02B37),
            child: Text("Contact",style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),),
            onPressed: () {
              scrollToKey(context, contactKey);
            },
          ),
        ];



    return Scaffold(
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
              elevation: 0.0,
              centerTitle: true,
              backgroundColor: Colors.black,
              title: Text(
                'Battu Mohit',
                style: kLabelTextStyle.copyWith(
                  color: Colors.white,
                ),
              ),
            )
          : null,
      drawer: ResponsiveWidget.isSmallScreen(context)
          ? Drawer(
              child: Container(
                color: Colors.black,//kInactiveCardColor,
                child: ListView(
                  // padding: EdgeInsets.all(10.0),
                  children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                 // color: Colors.white,
                height: MediaQuery.of(context).size.height*0.03,
                alignment: Alignment.topRight,
                child: MaterialButton(
                  shape: CircleBorder(),
                  hoverColor: Colors.red,
                    child: Icon(Icons.cancel_rounded, size: 25,color: Colors.white),
                onPressed: (){
                  Navigator.pop(context);
                } ,
                  ),
                  ),
                ],
              ),
          SizedBox(height: MediaQuery.of(context).size.height*0.025),
          MaterialButton(
            onPressed: (){
              scrollToKey(context, homeKey);
            },
            shape: CircleBorder(),
            child:
          Container(
             height: MediaQuery.of(context).size.height * 0.15,
             width: MediaQuery.of(context).size.height * 0.15,
                decoration:  BoxDecoration(
            backgroundBlendMode: BlendMode.luminosity,
            color: kButtonColor,
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage("images/MohitCircle.png"),
              alignment: Alignment.center,
              fit: BoxFit.scaleDown,
            ),
          ),
              ),
                ),
          SizedBox(height: MediaQuery.of(context).size.height*0.025),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children:[
          Text(
          'Battu Mohit',
          style: TextStyle(
            color:Colors.white,
            fontSize: 20,
          ), 
        ),
          ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.025),
          Container(
                           height:1.0,
                           width:100.0,
                           color:Colors.white54,
                           ),
          SizedBox(height: MediaQuery.of(context).size.height*0.05),
          Column(
          children: [
          MaterialButton(
            hoverColor:  Color(0xFF2BC037),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[Text("About",style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),),],
            ),
            onPressed: () {
              scrollToKey(context, profileKey);
            },
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.01),
           MaterialButton(
            hoverColor:  Color(0xFFAF2BC0),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children:[
              Text("Achievements",style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),),]
                              ),
            onPressed: () {
              scrollToKey(context, achievementsKey);
            },
          ),
         SizedBox(height: MediaQuery.of(context).size.height*0.01),
         MaterialButton(
            hoverColor:  Color(0xFFC07F2B),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children:[
              Text("Experience",style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),),]
                              ),
            onPressed: () {
              scrollToKey(context, experienceKey);
            },
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.01),
          MaterialButton(
            hoverColor:  Color(0xFF2B5FC0),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children:[
              Text("Education",style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),),]
                              ),
            onPressed: () {
              scrollToKey(context, educationKey);
            },
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.01),
          MaterialButton(
            hoverColor:  Color(0xFFA72BC0),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children:[
              Text("Projects",style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),),]
                              ),
            onPressed: () {
              scrollToKey(context, projectsKey);
            },
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.01),
          MaterialButton(
            hoverColor:  Color(0xFF2BC037),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children:[
              Text("Skills",style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),),]
                              ),
            onPressed: () {
              scrollToKey(context, skillsKey);
            },
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.01),
          MaterialButton(
            hoverColor:  Color(0xFFC02B37),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children:[
              Text("Contact",style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),),]
                              ),
            onPressed: () {
              scrollToKey(context, contactKey);
            },
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.25),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
          MaterialButton(
            shape: CircleBorder(),
            hoverColor: Color(0xffC0392B),
             child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children:[
              Icon(FontAwesomeIcons.github),
              ],
                              ),
            onPressed: () async{
              const url = 'https://github.com/mohitbattu?tab=repositories';
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
            },
          ),
    Container(height:30.0,
                  width:1,
                  color:Colors.white24,),
    MaterialButton(
            shape: CircleBorder(),
            hoverColor: Color(0xFF1269DB),
             child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children:[
              Icon(FontAwesomeIcons.linkedin),
              ],
                              ),
            onPressed: () async{
              const url = 'https://www.linkedin.com/in/battu-mohit-9b78a916a/';
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
            },
          ),
    Container(height:30.0,
                  width:1,
                  color:Colors.white24,),
     MaterialButton(
            shape: CircleBorder(),
            hoverColor: Color(0xFF27B42E),
             child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children:[
              Icon(FontAwesomeIcons.envelope),
              ],
                              ),
            onPressed: () async{
             const String DEV_EMAIL = "mobt20@student.bth.se";
        const String EMAIL_URL = "mailto:<$DEV_EMAIL>?subject=&body=";
        if (await canLaunch(EMAIL_URL)) {
          await launch(EMAIL_URL);
        } else {
          throw 'Could not launch $EMAIL_URL';
        }
            },

          ),

          ],
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            'Designed by Battu Mohit.',
            textAlign: TextAlign.center,
            style: kLabelTextStyle.copyWith(
              fontSize: 10.0,
            ),
          ),
]),
                  ],
                ),
              ),
            )
          : null,
      body: AnimatedPadding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.height *
            ((!ResponsiveWidget.isSmallScreen(context)) ? 0.025 : 0.00)),
        duration: Duration(seconds: 1),
        child: ResponsiveWidget(
          largeScreen: Column(
            children: [
              Container(
                child: !ResponsiveWidget.isSmallScreen(context)
                    ? Column(
                        children: <Widget>[ 
                          NavHeader(
                            navButtons: navButtons(context),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.025,
                          ),
                        ],
                      )
                    : null,
              ),
              Expanded(
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                     HomePage(key: homeKey),
                      ProfileInfo(
                        key: profileKey,
                      ),
                      AchieveInfo(
                        key: achievementsKey,
                      ),
                      ExperienceInfo(
                        key: experienceKey,
                      ),
                      EducationInfo(
                        key: educationKey,
                      ),
                      ProjectsInfo(
                        key: projectsKey,
                      ),
                      SkillsInfo(
                        key: skillsKey,
                      ),
                      ContactInfo(
                        key: contactKey,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
