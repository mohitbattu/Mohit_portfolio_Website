import 'package:mohit_portfolio/constants.dart';
import 'package:mohit_portfolio/education/widgets/socialMedialIcon.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height,
      width: width,
      child: Stack(
        children: [
          Positioned(
            bottom: width < 740 ? height * 0.1 : height * 0.15,
            right: width < 740 ? -width * 0.02 : -width * 0.1,
            child: Opacity(
              opacity: 0.9,
              child: Image.asset('images/Mohitremovebg.png', height: height * 0.75),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(
                width * 0.1, width < 740 ? height * 0.15 : height * 0.2, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "WELCOME TO MY PORTFOLIO! ",
                      style: GoogleFonts.montserrat(
                        fontSize: height * 0.03,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                    Image.asset(
                      "images/hi.gif",
                      height: height * 0.05,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                Text(
                  "Battu",
                  style: GoogleFonts.montserrat(
                      fontSize: height * 0.07,
                      fontWeight: FontWeight.w100,
                      color: Colors.white,
                      letterSpacing: 1.5),
                ),
                Text(
                  "Mohit",
                  style: GoogleFonts.montserrat(
                    fontSize: height * 0.07,
                    fontWeight: FontWeight.w500,
                    color:Colors.white,
                  ),
                ),
                Row(
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
                          color:  Colors.white,
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
                SizedBox(
                  height: height * 0.045,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (int i = 0; i < kSocialIcons.length; i++)
                      SocialMediaIconBtn(
                        icon: kSocialIcons[i],
                        socialLink: kSocialLinks[i],
                        height: height * 0.035,
                        horizontalPadding: width * 0.01,
                      )
                  ],
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
