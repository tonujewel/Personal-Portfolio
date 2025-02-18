import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:personal_portfolio/features/footer/screen/footer_screen.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/size_manager.dart';
import '../../about_me/screen/about_me_screen.dart';
import '../../contact/screen/contact_screen.dart';
import '../../my_experience/screen/my_experience_screen.dart';
import '../../my_project/screen/my_projects_screen.dart';
import '../../my_service/screen/my_service_screen.dart';
import '../../my_skills/screen/my_skills_screens.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primaryColor,
      body: Column(
        children: [
          HeaderSection(),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                AboutMeScreen(),
                MyServicesScreen(),
                MyExperienceScreen(),
                MySkills(),
                MyProjectsScreen(),
                ContactScreen(),
                FooterScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BigTitleText extends StatelessWidget {
  const BigTitleText({super.key, required this.title1, required this.title2});

  final String title1;
  final String title2;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title1,
          style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
        ),
        Gap(10),
        Text(
          title2,
          style: TextStyle(
            fontSize: 48,
            color: ColorManager.secondaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.primaryColor,
      padding: EdgeInsets.symmetric(horizontal: SizeManager.webHorizontalPadding, vertical: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/logo.png',
            height: 40,
          ),
          Gap(16),
          Text(
            "Jewel Rana",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18),
          ),
          Gap(40),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TopBarItem(text: 'About Me'),
                TopBarItem(text: 'Services'),
                TopBarItem(text: 'Projects'),
                TopBarItem(text: 'Testimonials'),
                TopBarItem(text: 'Contacts'),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            decoration: BoxDecoration(
              border: Border.all(color: ColorManager.secondaryColor),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              "Download CV",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 10),
            ),
          )
        ],
      ),
    );
  }
}

class TopBarItem extends StatelessWidget {
  const TopBarItem({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: Colors.white),
    );
  }
}
