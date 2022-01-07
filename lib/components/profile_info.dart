import 'package:mohit_portfolio/components/responsive.dart';
import 'package:mohit_portfolio/constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:visibility_detector/visibility_detector.dart';
import '../profile_image_visibility.dart';
import '../responsive_widget.dart';
import 'reusable_card.dart';

class ProfileInfo extends StatelessWidget {
  ProfileInfo({
    Key key,
  }) : super(key: key);

  profileImage(context) => VisibilityDetector(
        onVisibilityChanged: (info) {
          debugPrint("${info.visibleFraction} of my widget is visible");
          var imageVisibility =
              Provider.of<ProfileImageVisibility>(context, listen: false);
          if (info.visibleFraction <= 0) {
            imageVisibility.setVisibilityFalse();
          } else {
            imageVisibility.setVisibilityTrue();
          }
        },
        key: Key("ImageVisibilityKey"),
        child: Container(
          height: ResponsiveWidget.isSmallScreen(context)
              ? MediaQuery.of(context).size.height * 0.25
              : MediaQuery.of(context).size.width * 0.25,
          width: ResponsiveWidget.isSmallScreen(context)
              ? MediaQuery.of(context).size.height * 0.25
              : MediaQuery.of(context).size.width * 0.25,
          decoration: BoxDecoration(
            backgroundBlendMode: BlendMode.luminosity,
            color: kButtonColor,
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage("images/MohitCircle.png"),
              alignment: Alignment.center,
              fit: BoxFit.cover,
            ),
          ),
        ),
      );

  List<Widget> profileData(context) => [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.0),
          child: Text(
            'Battu Mohit',
            style: TextStyle(
              letterSpacing: 2.0,
              fontSize: 40.0,
              color: Colors.white,
              fontFamily: 'GoogleSansMedium',
            ),
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        ),
        Text(
          'B.Sc Computer Science',
          style: TextStyle(
            fontFamily: 'SourceSansPro',
            color: Color(0xFF8D8E98),
            fontSize: 20,
            letterSpacing: 3.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20,
          width: 270,
          child: Divider(
            color: Theme.of(context).accentColor,
          ),
        ),
        ResponsiveWidget(
          largeScreen: Container(
            width: MediaQuery.of(context).size.width * 0.55,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                kAboutText,
                style: kBodyTextStyle,
              ),
            ),
          ),
          smallScreen: Container(
            width: MediaQuery.of(context).size.width * 0.6,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                kAboutText,
                style: kBodyTextStyle,
              ),
            ),
          ),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ReusableCard(
            customColor: Colors.white10,
            cardChild: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    top: 100.0,
                    bottom: 100.0,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                           profileImage(context),
                           SizedBox(height: MediaQuery.of(context).size.height * 0.020),
                           Row(children: [
                            Icon(Icons.call,color: Colors.white,),
                            Text(' +46 0766-337923',style: kBodyTextStyle,),
                          //   Icon(Icons.location_pin,color: Colors.white,),
                          // Text('Karlskrona, Sweden',style: kBodyTextStyle,),
                           
                          ]),
                          SizedBox(height: MediaQuery.of(context).size.height * 0.020),
                          Row(children: [
                            // Icon(Icons.call,color: Colors.white,),
                            // Text('+46 0766-337923',style: kBodyTextStyle,),
                            Icon(Icons.location_pin,color: Colors.white,),
                          Text('Karlskrona, Sweden',style: kBodyTextStyle,),
                           
                          ]),
                           
                        ],
                      ),
                      
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.025,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: profileData(context),
                      ),
                    ],
                  ),
                 
                  
                ),
              ],
            ),
          ),
        ],
      ),
      smallScreen: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ReusableCard(
            customColor: Colors.white10,
            cardChild: Column(
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                profileImage(context),
                SizedBox(height: MediaQuery.of(context).size.height * 0.020),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                            Icon(Icons.call,color: Colors.white,),
                            Text(' +46 0766-337923',style: kBodyTextStyle,),
                          //   Icon(Icons.location_pin,color: Colors.white,),
                          // Text('Karlskrona, Sweden',style: kBodyTextStyle,),
                           
                          ]),
              SizedBox(height: MediaQuery.of(context).size.height * 0.020),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            Icon(Icons.location_pin,color: Colors.white,),
                          Text('Karlskrona, Sweden',style: kBodyTextStyle,),
                          ]),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: profileData(context),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      // it applies same style to all the widgets under it
      style: Theme.of(context).textTheme.subtitle1,
      maxLines: 1,
      child: Row(
        children: [
          if (Responsive.isMobileLarge(context)) FlutterCodedText(),
          if (Responsive.isMobileLarge(context))
            SizedBox(width: 20.0 / 2),
          Text("<Välkommen> "),
          Responsive.isMobile(context)
              ? Expanded(child: AnimatedText())
              : AnimatedText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: 20.0 / 2),
          if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
        ],
      ),
    );
  }
}
class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(
          "Tack för besöket! , jag hoppas att du får en underbar dag.",
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "Thank you for visiting! , I hope you're having a wonderful day.",
          speed: Duration(milliseconds: 60),
        ),
      ],
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
            text: "Välkommen",
            style: TextStyle(color: Colors.white),
          ),
          TextSpan(text: ">"),
        ],
      ),
    );
  }
}
