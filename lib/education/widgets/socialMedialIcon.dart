import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIconBtn extends StatelessWidget {
  final String icon;
  final String socialLink;
  final double height;
  final double horizontalPadding;

  SocialMediaIconBtn(
      {this.icon, this.socialLink, this.height, this.horizontalPadding});
  @override
  Widget build(BuildContext context) {
   
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: IconButton(
        icon: Image.network(
          icon,
          color: Colors.white,
        ),
        iconSize: height,
        onPressed: () => launchURL(socialLink),
        hoverColor:  Color(0xffC0392B),
      ),
    );
  }
}
void launchURL(String _url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';