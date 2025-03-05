import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../core/utils/app_constant.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/size_manager.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: SizeManager.webHorizontalPadding),
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
                'Flutter Developer',
                style: TextStyle(
                  fontFamily: 'Urbanist',
                  fontSize: size.width * .055,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                color: Colors.white,
                child: Row(
                  children: [
                    Flexible(
                      flex: 2,
                      child: Container(
                        color: Colors.white,
                        child: Text(
                          AppConstant.desc,
                          style: TextStyle(
                            color: Color.fromRGBO(52, 64, 83, 1),
                            fontFamily: 'Lufga',
                          ),
                        ),
                      ),
                    ),
                    Gap(32),
                    ProfileWidget(),
                    Flexible(
                      flex: 2,
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
                            '6 Years',
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.width * .34,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: (size.width * .22) * 2,
              height: size.width * .2,
              decoration: BoxDecoration(
                color: ColorManager.secondaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(300),
                  topRight: Radius.circular(300),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'assets/images/profile_image.png',
              height: size.width * .34,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
