import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../core/utils/app_constant.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/size_manager.dart';
import '../../../core/widgets/primary_button.dart';
import '../widgets/profile_circle_widget.dart';

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
          Stack(
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
                      ),
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
                  ProfileCircleWidget()
                ],
              ),
              // Positioned(
              //   bottom: 0,
              //   left: 0,
              //   right: 0,
              //   child: HalfCircleBackground(
              //     height: size.width * 0.3,
              //     width: size.width * 0.3,
              //     backgroundColor: ColorManager.secondaryColor,
              //   ),
              // ),
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
