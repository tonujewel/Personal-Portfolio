import 'models/my_services_model.dart';

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
      title: 'API Integration & Backend Connectivity',
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
}
