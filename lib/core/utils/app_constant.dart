import 'package:personal_portfolio/core/models/my_skills_model.dart';
import 'package:personal_portfolio/core/models/work_experience_model.dart';
import 'package:personal_portfolio/features/footer/model/social_data_model.dart';

import '../models/my_services_model.dart';

class AppConstant {
  static final List<MyServicesModel> myServicesList = [
    MyServicesModel(
      title: 'Mobile App Development',
      img: 'assets/images/my_services/mobile_app_development.png',
      desc: [
        'Custom iOS and Android app development using Flutter',
        'Performance-optimized and scalable applications',
      ],
    ),
    MyServicesModel(
      title: 'UI/UX Design Implementation',
      img: 'assets/images/my_services/ui_ux_design.png',
      desc: [
        'Pixel-perfect UI with smooth animations',
        'Responsive designs for all screen sizes',
      ],
    ),
    MyServicesModel(
      title: 'State Management Solutions',
      img: 'assets/images/my_services/state_management.png',
      desc: [
        'Expertise in Riverpod, Bloc, and GetX',
        'Efficient state handling for high-performance apps',
      ],
    ),
    MyServicesModel(
      title: 'API Integration',
      img: 'assets/images/my_services/api_integration.png',
      desc: [
        'RESTful API and third-party service integration',
        'Firebase authentication, Firestore, and real-time database integration',
      ],
    ),
    MyServicesModel(
      title: 'Maintenance & Optimization',
      img: 'assets/images/my_services/maintenance_optimization.png',
      desc: [
        'Bug fixing and performance improvement',
        'Version upgrades and feature enhancements',
      ],
    ),
    MyServicesModel(
      title: 'CI/CD & Deployment',
      img: 'assets/images/my_services/ci_cd_deployment.png',
      desc: [
        'Automating build and deployment processes',
        'Publishing apps to Play Store and App Store',
      ],
    ),
  ];

  static final List<WorkExperienceModel> myWorkExperienceList = [
    WorkExperienceModel(
      companyName: "Exotico Solution",
      designation: 'Software Engineer (Mobile Application)',
      description:
          'Write clean, efficient, well-documented Flutter code.\nOptimize Flutter app performance through code tuning and profiling.\nResolve Flutter app bugs promptly for timely updates.\nManage Flutter app deployment to app store and playstore.\nLead Flutter development, enforcing best practices and high-quality standards.',
      date: 'OCT 2023 - PRESENT',
      location: 'Dhaka, Bangladesh',
    ),
    WorkExperienceModel(
      companyName: "Singularity Limited",
      designation: 'Software Developer',
      description:
          'Thoroughly examine the project requirements and develop a detailed project timeline.\nImplemented robust quality assurance protocols resulting in 50% reduction in product defects and a 30% increase in customer retention rates.\nDesign robust, scalable Flutter architectures with a focus on performance, scalability, and extensibility.\nOptimize Flutter app performance through code tuning and profiling.',
      date: 'OCT 2022 - SEP 2023',
      location: 'Dhaka, Bangladesh',
    ),
    WorkExperienceModel(
      companyName: "CholoXYZ",
      designation: 'Software Engineer (Flutter)',
      description:
          'Participated in the planning, analysis, and design of iOS and Android applications using flutter.\nWriting code using MVC architecture.\nOptimize for peak performance, superior quality, and exceptional user experience.\nDeploy of apps in Play store and App store.',
      date: 'SEP 2021 - SEP 2022',
      location: 'Dhaka, Bangladesh',
    ),
    WorkExperienceModel(
      companyName: "ConceptX Ltd",
      designation: 'Software Engineer (Flutter)',
      description:
          'Developing apps using GetX framework.\nAddress client requirements for applications with a focus on delivering the most practical and efficient solutions possible.\nCollaborate with team members to develop client applications efficiently and within set timelines.\nUpload apps to Google play store and Apple app store.',
      date: 'OCT 2020 - SEP 2021',
      location: 'Dhaka, Bangladesh',
    ),
    WorkExperienceModel(
      companyName: "Advanced Apps Bangladesh Limited",
      designation: 'Software Engineer (Android)',
      description:
          'Address client requirements for applications by prioritizing the most practical and efficient solutions.\nCollaborate with team members to develop client apps efficiently and within set timelines.\nUpload app to Google play store.',
      date: 'AUG 2018 - OCT 2020',
      location: 'Dhaka, Bangladesh',
    ),
  ];

  static final List<MySkillsModel> mySkillsList = [
    MySkillsModel(
      id: '1',
      title: 'Flutter',
      description: 'Developing cross-platform mobile applications using Flutter.',
      image: 'assets/images/my_skills/flutter.svg',
    ),
    MySkillsModel(
      id: '2',
      title: 'Dart',
      description: 'Strong knowledge of Dart programming language.',
      image: 'assets/images/my_skills/dart.svg',
    ),
    MySkillsModel(
      id: '3',
      title: 'Kotlin',
      description: 'Developing native Android applications using Kotlin.',
      image: 'assets/images/my_skills/kotlin.svg',
    ),
    MySkillsModel(
      id: '4',
      title: 'Java',
      description: 'Developing native Android applications using Java.',
      image: 'assets/images/my_skills/java.svg',
    ),
    MySkillsModel(
      id: '5',
      title: 'GetX',
      description: 'State management and navigation using GetX.',
      image: 'assets/images/my_skills/getx.svg',
    ),
    MySkillsModel(
      id: '6',
      title: 'Riverpod',
      description: 'State management using Riverpod.',
      image: 'assets/images/my_skills/riverpod.svg',
    ),
    MySkillsModel(
      id: '7',
      title: 'Bloc',
      description: 'State management using Bloc.',
      image: 'assets/images/my_skills/bloc.svg',
    ),
    MySkillsModel(
      id: '8',
      title: 'Firebase',
      description: 'Firebase authentication, Firestore, and real-time database integration.',
      image: 'assets/images/my_skills/firebase.svg',
    ),
    MySkillsModel(
      id: '9',
      title: 'REST API',
      description: 'RESTful API and third-party service integration.',
      image: 'assets/images/my_skills/rest_api.svg',
    ),
    MySkillsModel(
      id: '10',
      title: 'Figma',
      description: 'Designing UI/UX using Figma.',
      image: 'assets/images/my_skills/figma.svg',
    ),
    MySkillsModel(
      id: '11',
      title: 'CI/CD',
      description: 'Automating build and deployment processes.',
      image: 'assets/images/my_skills/ci_cd.svg',
    ),
    MySkillsModel(
      id: '12',
      title: 'Git',
      description: 'Version control using Git.',
      image: 'assets/images/my_skills/git.svg',
    ),
    MySkillsModel(
      id: '13',
      title: 'Jira',
      description: 'Project management using Jira.',
      image: 'assets/images/my_skills/jira.svg',
    ),
    MySkillsModel(
      id: '14',
      title: 'Slack',
      description: 'Team communication using Slack.',
      image: 'assets/images/my_skills/slack.svg',
    ),
    MySkillsModel(
      id: '15',
      title: 'Trello',
      description: 'Project management using Trello.',
      image: 'assets/images/my_skills/trello.svg',
    ),
  ];

  static final List<SocialDataModel> socialIcons = [
    SocialDataModel(
      title: 'Facebook',
      icon: 'assets/svg/facebook.svg',
      url: 'https://www.facebook.com/tonujewel',
    ),
    SocialDataModel(
      title: 'LinkedIn',
      icon: 'assets/svg/linkedin.svg',
      url: 'https://www.linkedin.com/in/tonujewel',
    ),
    SocialDataModel(
      title: 'GitHub',
      icon: 'assets/svg/github.svg',
      url: 'https://github.com/tonujewel/',
    ),
    SocialDataModel(
      title: 'WhatsApp',
      icon: 'assets/svg/whatsapp.svg',
      url: 'https://wa.me/8801744960015',
    ),
  ];

  static final String desc =
      'Skilled Developer with 6 years of experience developing mobile applications and 4 years of experience in the Flutter framework and 2 years of native app development experience. Skilled in collaborating with cross-functional teams to deliver high-quality, scalable solutions. Proficient in Agile development methodologies. Seeking to leverage my expertise in software development and my passion for innovation to drive business growth and success.';
}
