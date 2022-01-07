import 'package:mohit_portfolio/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'round_icon_button.dart';

class ContactInfo extends StatelessWidget {
  ContactInfo({
    Key key,
  }) : super(key: key);

  final List<Widget> contactData = [
     MaterialButton(
            shape: CircleBorder(),
            hoverColor: Color(0xffC0392B),
             child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children:[
              Icon(FontAwesomeIcons.github,size:30),
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
    MaterialButton(
            shape: CircleBorder(),
            hoverColor: Color(0xFF1269DB),
             child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children:[
              Icon(FontAwesomeIcons.linkedin,size:30),
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
     MaterialButton(
            shape: CircleBorder(),
            hoverColor: Color(0xFF27B42E),
             child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children:[
              Icon(FontAwesomeIcons.envelope,size:30),
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
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 25.0,
      ),
      child: Column(
       
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: contactData,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.04,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           Row(children: [
                            Icon(Icons.call,color: Colors.white,),
                            Text(' +46 0766-337923',style: kBodyTextStyle,),
                          //   Icon(Icons.location_pin,color: Colors.white,),
                          // Text('Karlskrona, Sweden',style: kBodyTextStyle,),
                           
                          ]),
                          SizedBox(width: MediaQuery.of(context).size.width * 0.020),
                          Row(children: [
                            // Icon(Icons.call,color: Colors.white,),
                            // Text('+46 0766-337923',style: kBodyTextStyle,),
                            Icon(Icons.location_pin,color: Colors.white,),
                          Text('Karlskrona, Sweden',style: kBodyTextStyle,),
                           
                          ]),
                           
                        ],
                      ),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.04,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children:[
          MaterialButton(
            hoverColor:Colors.red,
            color: Colors.white10,
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(360)),
           child: Text(
                              "VIEW RESUME",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
            onPressed: () {
              launch("https://drive.google.com/file/d/1mAO3_ZjbZusI9pkhxW5sZDHDkeYaUc2P/view?usp=sharing");
              
            }),
            
            ],
      ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            'Made with ♥ in Flutter.',
            style: kLabelTextStyle.copyWith(
              fontSize: 10.0,
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            'Copyright \u00a9 2021 | Battu Mohit',
            textAlign: TextAlign.center,
            style: kLabelTextStyle.copyWith(
              fontSize: 10.0,
            ),
          ),
          
        ],
      ),
    );
  }
}
