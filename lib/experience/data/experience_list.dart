import 'package:mohit_portfolio/models/custom_url.dart';

import '../models/experience.dart';

const List<Experience> experienceList = [
  Experience(
    title: 'Internship in Industrial Internet of Things',
    company: 'National Instruments',
    description: [
      'A 4-week online internship program offered jointly by National Instruments & Cognibot.',
      'Trained and assisted in the domain of AI, Machine Learning Models and IOT systems.',
      'Implemented and Developed a Stock Market Price Analysis, Cement Strength Prediction and \nConway’s Game of Life Projects as a part of Internship Program.',
      
    ],
    year: 'May 2020 - June 2020',
    textWithLinks: TextWithLinks(
      textArray: [
        CustomURL(
            text: 'Available in Github',
            url:
                'https://github.com/mohitbattu/National_Instruments')
      ],
    ),
  ),
  Experience(
    title: 'Machine Learning Internship',
    company: 'Verzeo',
    description: [
      'Learned and applied a variety of machine learning methods to a data set for program \nrecognition and analysis.',
      'Using the Data Science skills, accomplished the Data Visualization of App Store Games \nproject and exposed the best mix of strategy games accessible in the app store\nin order to earn a good user rating.',
      'Implemented a Supervised Machine Learning approach on E-Commerce Customer Fraud Detection \nproject where the Ada boost Classifier model achieved 90 % accuracy.'    
    ],
    year: 'January 2020 - February 2020',
    textWithLinks: TextWithLinks(
      textArray: [
        CustomURL(
            text: 'Available in Github',
            url:
                'https://github.com/mohitbattu/Verzeo')
      ],
    ),
  ),
];
