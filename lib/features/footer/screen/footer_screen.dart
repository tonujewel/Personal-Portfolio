import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/size_manager.dart';

class FooterScreen extends StatelessWidget {
  const FooterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.primaryColor,
      padding: EdgeInsets.symmetric(horizontal: SizeManager.webHorizontalPadding, vertical: 16),
      child: Column(
        children: [
          Text(
            'Lets Connect there',
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Color.fromRGBO(251, 252, 252, 1),
                fontSize: 64,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 1),
          ),
          Gap(40),
          Divider(
            color: Color.fromRGBO(251, 252, 252, 1),
            thickness: 1,
          ),
          Image.asset('assets/images/logo.png'),
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
          SvgPicture.asset('assets/svg/facebook.svg'),
        ],
      ),
    );
  }
}
