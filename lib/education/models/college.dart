import 'package:flutter/foundation.dart';

class College {

  final String universityName;
  final String year;
  final String courseName;
  final String location;
  final String credits;
  const College({
    @required this.location,
    @required this.credits,
    @required this.universityName,
    @required this.year,
    @required this.courseName,
  });
}
