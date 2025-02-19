import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/size_manager.dart';
import '../../about_me/screen/about_me_screen.dart';
import '../../contact/screen/contact_screen.dart';
import '../../footer/screen/footer_screen.dart';
import '../../my_experience/screen/my_experience_screen.dart';
import '../../my_project/screen/my_projects_screen.dart';
import '../../my_service/screen/my_service_screen.dart';
import '../../my_skills/screen/my_skills_screens.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Gap(20),
          HeaderSection(),
          Gap(20),
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
                Gap(40)
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
      decoration: BoxDecoration(
        color: ColorManager.dartColor,
        borderRadius: BorderRadius.circular(40),
      ),
      margin: EdgeInsets.symmetric(horizontal: SizeManager.webHorizontalPadding),
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TopBarItem(text: 'Home', isSelected: true),
          TopBarItem(text: 'About', isSelected: false),
          TopBarItem(text: 'Services', isSelected: false),
          TopBarItem(text: 'Projects', isSelected: false),
          TopBarItem(text: 'Testimonials', isSelected: false),
          TopBarItem(text: 'Contacts', isSelected: false),
        ],
      ),
    );
  }
}

class TopBarItem extends StatelessWidget {
  const TopBarItem({
    super.key,
    required this.text,
    required this.isSelected,
  });

  final String text;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 14),
      decoration: BoxDecoration(
        color: isSelected ? ColorManager.secondaryColor : Colors.transparent,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontFamily: 'Lufga'),
      ),
    );
  }
}
