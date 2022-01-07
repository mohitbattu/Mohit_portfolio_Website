
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../constants.dart';
import 'model/achieve.dart';

class AchieveCard extends StatelessWidget {
  final Achieve achieve;
  const AchieveCard({@required this.achieve});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.025),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.025),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 16.0,
              ),
              ...List<Padding>.generate(
                achieve.description.length,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width*0.1),
                      Icon(MaterialCommunityIcons.trophy_award),
                      SizedBox(width: MediaQuery.of(context).size.width*0.005),
                      Expanded(
                        child: Text(
                          '${achieve.description[index]}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            height: 1.5,
                            letterSpacing: 0.5,
                            ),
                          textAlign: TextAlign.start,
                        ),
                      ),
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