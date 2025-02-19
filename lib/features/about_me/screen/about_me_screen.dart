import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:personal_portfolio/core/utils/app_constant.dart';
import 'package:personal_portfolio/core/utils/color_manager.dart';

import '../../../core/utils/size_manager.dart';
import '../../../core/widgets/half_circle.dart';
import '../../../core/widgets/primary_button.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: SizeManager.webHorizontalPadding, vertical: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: size.width * .1,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: SvgPicture.asset('assets/svg/hello_top.svg'),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(38),
                  border: Border.all(
                    color: ColorManager.dartColor,
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 25.490196228027344, vertical: 12.745098114013672),
                child: Text(
                  'Hello!',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromRGBO(23, 23, 23, 1),
                      fontFamily: 'Lufga',
                      fontSize: 20,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'I’m',
                    style: TextStyle(
                      fontFamily: 'Urbanist',
                      fontSize: size.width * .05,
                    ),
                  ),
                  Gap(16),
                  Text(
                    'Jewel,',
                    style: TextStyle(
                        fontFamily: 'Urbanist', fontSize: size.width * .05, color: ColorManager.secondaryColor),
                  ),
                ],
              ),
              Text(
                'Mobile Application Developer',
                style: TextStyle(
                  fontFamily: 'Urbanist',
                  fontSize: size.width * .05,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      AppConstant.desc,
                      style: TextStyle(
                        color: Color.fromRGBO(52, 64, 83, 1),
                        fontFamily: 'Lufga',
                      ),
                    ),
                  ),
                  Expanded(flex: 2, child: SizedBox.shrink()),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: List.generate(
                            5,
                            (intex) {
                              return SvgPicture.asset('assets/svg/star.svg');
                            },
                          ),
                        ),
                        Text(
                          '10 Years',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(23, 23, 23, 1),
                              fontFamily: 'Urbanist',
                              fontSize: 47,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Experince',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromRGBO(23, 23, 23, 1),
                            fontFamily: 'Lufga',
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              ProfileCircleWidget(imagePath: "assets/images/profile_image.png")
            ],
          ),
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
                      AppConstant.desc,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white.withAlpha(90),
                        fontSize: 16,
                      ),
                    ),
                    Gap(30),
                    PrimaryButton(
                      onPressed: () {},
                      text: 'See My Work'.toUpperCase(),
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

class ProfileCircleWidget extends StatelessWidget {
  const ProfileCircleWidget({
    super.key,
    required this.imagePath,
    this.backgroundCircleColor = const Color(0xFFFFB74D), // Orange background
    this.imageSize = 300.0,
    this.backgroundCircleSize = 400.0,
  });

  final String imagePath;
  final Color backgroundCircleColor;
  final double imageSize;
  final double backgroundCircleSize;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Background circle
        Container(
          width: backgroundCircleSize,
          height: backgroundCircleSize,
          decoration: BoxDecoration(
            color: backgroundCircleColor,
            shape: BoxShape.circle,
          ),
        ),
        // Profile image
        ClipRRect(
          borderRadius: BorderRadius.circular(imageSize / 2),
          child: Image.asset(
            imagePath,
            width: imageSize,
            height: imageSize,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
