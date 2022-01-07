import 'package:mohit_portfolio/models/custom_url.dart';
import 'package:flutter/foundation.dart';

class Project {
  final String title;
  final String subTitle;
  final List<String> description;
  final String year;
  final String techStack;
  final TextWithLinks textWithLinks;
  final TextWithLinks textWithLinks1;
  const Project({
    @required this.title,
    @required this.subTitle,
    @required this.description,
     this.year,
     this.techStack,
    this.textWithLinks1,
    this.textWithLinks,
  });
}
