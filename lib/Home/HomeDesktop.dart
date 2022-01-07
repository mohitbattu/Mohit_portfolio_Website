import 'package:mohit_portfolio/animations/entranceFader.dart';

import 'package:mohit_portfolio/education/widgets/adaptiveText.dart';
import 'package:mohit_portfolio/education/widgets/socialMedialIcon.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';
import '../animations/bottomAnimation.dart';

class HomeDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height - 50,
      width: width,
      child: Stack(
        children: [
          Positioned(
            top: width < 1200 ? height * 0.15 : height * 0.1,
            right: width * 0.01,
            child: Opacity(
              opacity: 0.9,
              child: EntranceFader(
                offset: Offset(0, 0),
                delay: Duration(seconds: 1),
                duration: Duration(milliseconds: 800),
                child: Image.asset(
                  'images/Mohitremovebg.png',
                  height: width < 1200 ? height * 0.8 : height * 0.85,
                ),
              ),
            ),
          ),
          Container(
            margin:
                EdgeInsets.fromLTRB(width * 0.1, height * 0.2, width * 0.1, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AdaptiveText(
                      "WELCOME TO MY PORTFOLIO! ",
                      style: GoogleFonts.montserrat(
                        fontSize: height * 0.03,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                    EntranceFader(
                      offset: Offset(0, 0),
                      delay: Duration(seconds: 2),
                      duration: Duration(milliseconds: 800),
                      child: Image.asset(
                        "images/hi.gif",
                        height: height * 0.05,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                AdaptiveText(
                  "Battu",
                  style: GoogleFonts.montserrat(
                      fontSize: width < 1200 ? height * 0.085 : height * 0.095,
                      fontWeight: FontWeight.w100,
                      color: Colors.white,
                      letterSpacing: 4.0),
                ),
                AdaptiveText(
                  "Mohit",
                  style: GoogleFonts.montserrat(
                      color:Colors.white,
                      fontSize: width < 1200 ? height * 0.085 : height * 0.095,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 5.0),
                ),
                EntranceFader(
                  offset: Offset(-10, 0),
                  delay: Duration(seconds: 1),
                  duration: Duration(milliseconds: 800),
                  child: Row(
                    children: [
                      Icon(
                        Icons.play_arrow_rounded,
                        color: Color(0xffC0392B),
                      ),
                      TyperAnimatedTextKit(
                          isRepeatingAnimation: true,
                          speed: Duration(milliseconds: 50),
                          textStyle: GoogleFonts.montserrat(
                            fontSize: height * 0.03,
                            fontWeight: FontWeight.w200,
                            color: Colors.white,
                          ),
                          text: [
                            " Java Programmer",
                          " Python Programmer",
                          " Flutter Developer",
                          " AI/ML Engineer",
                          " UI/UX Enthusiast"
                          ]),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(
                    kSocialIcons.length,
                    (index) => WidgetAnimator(
                      child: SocialMediaIconBtn(
                        icon: kSocialIcons[index],
                        socialLink: kSocialLinks[index],
                        height: height * 0.035,
                        horizontalPadding: width * 0.005,
                      ),
                    ),
                  ),
                ),
                 SizedBox(
                   height: MediaQuery.of(context).size.height * 0.05,
                ), 
             Row(
              children: [
                 SizedBox(width: MediaQuery.of(context).size.width*0.025),
               MaterialButton(
            hoverColor:  Color(0xFFC73B2B),
             color: Colors.white10,
             child: Text(
                              "VIEW RESUME",
                               style: TextStyle(
                                 color: Colors.white,
                            ),
                           ),
            onPressed: () {
              launch("https://drive.google.com/file/d/1mAO3_ZjbZusI9pkhxW5sZDHDkeYaUc2P/view?usp=sharing");
           }),
           ],),

              ],
            ),
          ),
        ],
      ),
    );
  }
}




