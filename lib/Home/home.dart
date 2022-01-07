import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'HomeDesktop.dart';
import 'HomeMobile.dart';
import 'HomeTab.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key key }) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: HomeMobile(),
      tablet: HomeTab(),
      desktop: HomeDesktop(),
    );
  }
}
