import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:personal_portfolio/core/app_constant.dart';

import '../core/color_manager.dart';
import '../core/models/my_services_model.dart';
import '../core/size_manager.dart';

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
              children: [
                HomeTopSection(),
                MyServicesScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyServicesScreen extends StatelessWidget {
  const MyServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.bgColor,
      padding: EdgeInsets.symmetric(horizontal: SizeManager.webHorizontalPadding, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'My ',
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              ),
              Text(
                'Services',
                style: TextStyle(
                  fontSize: 48,
                  color: ColorManager.secondaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const Gap(20),
          GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 3,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 1.1,
            children: List.generate(AppConstant.myServicesList.length, (index) {
              return MyServiceItemWidget(data: AppConstant.myServicesList[index]);
            }),
          ),
          const SizedBox(height: 200),
        ],
      ),
    );
  }
}

class MyServiceItemWidget extends StatelessWidget {
  const MyServiceItemWidget({super.key, required this.data});

  final MyServicesModel data;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: ColorManager.secondaryColor),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              data.img,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.title,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 6),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(data.desc.length, (index) {
                      return FittedBox(
                        child: Text(
                          "* ${data.desc[index]}",
                          style: const TextStyle(fontSize: 14),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeTopSection extends StatelessWidget {
  const HomeTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.primaryColor,
      padding: EdgeInsets.symmetric(horizontal: SizeManager.webHorizontalPadding, vertical: 16),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(40),
                    Text(
                      'Hi I am',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                    Gap(8),
                    Text(
                      'Jewel Rana',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(239, 109, 88, 1),
                        fontFamily: 'Epilogue',
                        fontSize: 24,
                        letterSpacing: 3,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Mobile Application Developer',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 72,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Skilled Developer with 6 years of experience developing mobile applications and 4 years of experience in the Flutter framework and 2 years of native app development experience. Skilled in collaborating with cross-functional teams to deliver high-quality, scalable solutions. Proficient in Agile development methodologies. Seeking to leverage my expertise in software development and my passion for innovation to drive business growth and success.',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white.withAlpha(90),
                        fontSize: 16,
                      ),
                    ),
                    Gap(30),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Color.fromRGBO(239, 109, 88, 1),
                      ),
                      child: Text(
                        'See My Work'.toUpperCase(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Gap(40),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [Image.asset('assets/images/pic.png')],
                ),
              )
            ],
          ),
          Gap(60)
        ],
      ),
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
