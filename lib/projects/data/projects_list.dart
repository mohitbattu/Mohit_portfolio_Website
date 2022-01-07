import 'package:mohit_portfolio/models/custom_url.dart';

import '../models/project.dart';

const List<Project> projectsList = [
  Project(
    title: 'Optimization of Heterogenous Parallel Computing Systems using Machine Learning',
    subTitle: 'Bachelor Thesis',
    description: [
      '</> Built an efficient Machine Learning model to predict optimal implementation variant of an application.',
      '</> Six Machine Learning models are trained and tested using stratified k-fold strategy on the dataset.',
      '</>  A comparison between the six Machine Learning models are measured in terms of accuracy,\nrun-time training, run-time prediction for providing the best model.',
      '</> In comparison to other Machine Learning models, the Decision Tree classifier is found to be \nthe most suitable due to its high precision of accuracy, low time required for training and\npredicting the optimal implementation variant of heterogeneous system application.',
      
    ],
    techStack: 'Python, Jupyter Notebook and Nvidia CUDA compiler.',
    textWithLinks: TextWithLinks(
      textArray: [
        CustomURL(text: '</> The Final project thesis has been published in reputed '),
        CustomURL(
          text: 'Swedish Research Diva portal.',
          url:
              'https://www.diva-portal.org/smash/get/diva2:1573760/FULLTEXT02.pdf',
        ),
      ],
    ),
    textWithLinks1: TextWithLinks(
      textArray: [
        CustomURL(
          text: 'Available in Github',
          url:
              'https://github.com/mohitbattu/Optimization_of_Heterogenous_Parallel_Computing_using_Machine_Learning',
        ),
      ],
    ),
  ),
  Project(
    title: 'Step Tracker',
    subTitle: 'Android Application',
    description: [
      '</> Provides user to track and display the number of daily steps, pedestrian status, calories consumed\nand total distance travelled by using the Google APIs.',
      '</> Integrated open weather API for displaying 5 days weather forecast including the present day',
      '</> Firebase used as a backend server for the application and provided the multiple access login to the user.',
    ],
    techStack: 'Flutter, Firebase(i.e. NoSQL), Google APIs and OpenWeatherAPIs.',
    textWithLinks1: TextWithLinks(
      textArray: [
        CustomURL(
          text: 'Available in Github',
          url:
              'https://github.com/mohitbattu/Step_Tracker',
        ),
      ],
    ),
  ),
  Project(
    title: 'Evaluation of Models in Windows Malware Threat Detection',
    subTitle: 'Machine Learning',
    description: [
      '</> Implemented 4 different types of a Machine Learning models namely LightGBM, XGBoost,\nDecision Tree Classifier, and Random Forest Classifier.',
      '</> LightGBM has achieved better performance in comparision with the other Machine Learning models\n and gained 77.8 % in detecting Windows Malware Threats.'
    ],
    techStack: 'Python and Jupyter Notebook.',
    textWithLinks1: TextWithLinks(
      textArray: [
        CustomURL(
          text: 'Available in Github',
          url:
              'https://github.com/mohitbattu/Microsoft_Malware_Prediction',
        ),
      ],
    ),
  ),
  Project(
    title: 'Deployment of a Scalable HTML based Web Application using AWS',
    subTitle: 'Cloud Computing',
    description: [
      '</> Deployed a flask application into Amazon Web Services (AWS).',
      '</> Applied autoscaling to satisfy the requirements scalability with respect to computation and\nhigh availability of the computation.'
    ],
    techStack: 'Amazon EC2 instance, AWS, Docker and Flask Application.',
    textWithLinks1: TextWithLinks(
      textArray: [
        CustomURL(
          text: 'Available in GoogleDocs',
          url:
              'https://drive.google.com/file/d/11tIzaa1mLdlE6EiTZN43fmHzFg9jsF2k/view',
        ),
      ],
    ),
  ),
];
