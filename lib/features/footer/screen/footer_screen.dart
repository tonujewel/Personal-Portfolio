import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../core/utils/app_constant.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/size_manager.dart';
import '../../../core/widgets/primary_button.dart';

class FooterScreen extends StatelessWidget {
  const FooterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      color: ColorManager.primaryColor,
      padding: EdgeInsets.symmetric(horizontal: SizeManager.webHorizontalPadding, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(size.width * .05),
          Row(
            children: [
              Expanded(
                child: Text(
                  'Lets Connect there',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromRGBO(251, 252, 252, 1),
                      fontSize: 64,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                      height: 1),
                ),
              ),
              PrimaryButton(
                text: 'Hire Me',
                onPressed: () {},
              ),
            ],
          ),
          Gap(size.width * .05),
          Divider(
            color: Color.fromRGBO(251, 252, 252, 1),
            thickness: 1,
          ),
          Gap(size.width * .02),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      height: size.width * .04,
                      width: size.width * .04,
                    ),
                    Gap(size.width * .02),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed congue interdum ligula a dignissim. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lobortis orci elementum egestas lobortis.',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(251, 252, 252, 1),
                        fontFamily: 'Lufga',
                        fontSize: 20,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                        height: 1,
                      ),
                    ),
                    Gap(size.width * .02),
                    Wrap(
                      children: List.generate(AppConstant.socialIcons.length, (index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset(
                            AppConstant.socialIcons[index].icon,
                            height: size.width * .02,
                            width: size.width * .02,
                          ),
                        );
                      }),
                    )
                  ],
                ),
              ),
              Gap(size.width * .02),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Navigation',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(253, 132, 57, 1),
                        fontFamily: 'Lufga',
                        fontSize: 20,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                        height: 1,
                      ),
                    ),
                    Gap(size.width * .02),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 10,
                      children: [
                        FooterItem(text: 'About Me'),
                        FooterItem(text: 'Services'),
                        FooterItem(text: 'Projects'),
                        FooterItem(text: 'Testimonials'),
                        FooterItem(text: 'Contacts'),
                      ],
                    ),
                  ],
                ),
              ),
              Gap(size.width * .02),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Contact',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(253, 132, 57, 1),
                        fontFamily: 'Lufga',
                        fontSize: 20,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                        height: 1,
                      ),
                    ),
                    Gap(size.width * .02),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 10,
                      children: [
                        FooterItem(text: '+880 1744 960 015'),
                        FooterItem(text: 'tonujewel@gmail.com'),
                        FooterItem(text: 'jewelrana.vercel.app'),
                      ],
                    ),
                  ],
                ),
              ),
              Gap(size.width * .02),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Get the latest information',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(253, 132, 57, 1),
                        fontFamily: 'Lufga',
                        fontSize: 20,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                        height: 1,
                      ),
                    ),
                    Gap(size.width * .02),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Email Address",
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: ColorManager.secondaryColor,
                              borderRadius: BorderRadius.horizontal(
                                right: Radius.circular(12),
                              ),
                            ),
                            padding: EdgeInsets.all(16),
                            child: SvgPicture.asset('assets/svg/send_icon.svg'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Gap(size.width * .02),
          Divider(
            color: Color.fromRGBO(251, 252, 252, 1),
            thickness: 1,
          ),
          Gap(size.width * .02),
          Container(
            decoration: BoxDecoration(),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Copyright© ${DateTime.now().year} Jewel Rana. All Rights Reserved.',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: 'Montserrat',
                        fontSize: 20,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  ),
                ),
                Expanded(
                  child: Text(
                    'User Terms & Conditions | Privacy Policy',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: 'Lufga',
                        fontSize: 20,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
class FooterItem extends StatelessWidget {
  const FooterItem({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: Colors.white, fontFamily: 'Lufga'),
    );
  }
}