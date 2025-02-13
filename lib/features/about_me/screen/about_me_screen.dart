import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/size_manager.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({super.key});

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
                flex: 1,
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
                flex: 1,
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
