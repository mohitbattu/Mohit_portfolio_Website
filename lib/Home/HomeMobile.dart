import 'package:mohit_portfolio/constants.dart';
import 'package:mohit_portfolio/education/widgets/socialMedialIcon.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeMobile extends StatefulWidget {
  @override
  _HomeMobileState createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
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
            bottom: 0.0,
            right: -width * 0.025,
            child: Opacity(
              opacity: 0.9,
              child: Image.asset('images/Mohitremovebg.png', height: height * 0.65),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(width * 0.07, height * 0.12, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "HEY THERE! ",
                      style: GoogleFonts.montserrat(
                          fontSize: height * 0.025,
                          color: Colors.white,
                          fontWeight: FontWeight.w200),
                    ),
                    Image.asset(
                      "images/hi.gif",
                      height: height * 0.03,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Text(
                  "Battu",
                  style: GoogleFonts.montserrat(
                      fontSize: height * 0.055,
                      color: Colors.white,
                      fontWeight: FontWeight.w100,
                      letterSpacing: 1.1),
                ),
                Text(
                  "Mohit",
                  style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: height * 0.055,
                      fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.play_arrow_rounded,
                      color:Color(0xffC0392B),
                    ),
                    TyperAnimatedTextKit(
                        isRepeatingAnimation: true,
                        speed: Duration(milliseconds: 50),
                        textStyle: GoogleFonts.montserrat(
                            fontSize: height * 0.03,
                            color: Colors.white,
                            fontWeight: FontWeight.w200),
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
                  height: height * 0.035,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (int i = 0; i < kSocialIcons.length; i++)
                      SocialMediaIconBtn(
                        icon: kSocialIcons[i],
                        socialLink: kSocialLinks[i],
                        height: height * 0.03,
                        horizontalPadding: 2.0,
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
