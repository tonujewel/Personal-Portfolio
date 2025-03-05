import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/utils/app_constant.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/size_manager.dart';
import '../../dashboard/screen/dashboard_screen.dart';
import '../widget/my_service_item_widget.dart';

class MyServicesScreen extends StatelessWidget {
  const MyServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        color: ColorManager.primaryColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: size.height * .15,
            left: 0,
            child: Image.asset(
              'assets/images/left_1.png',
              height: size.width * .15,
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Image.asset(
              'assets/images/right_bottom.png',
              width: size.width * .13,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              'assets/images/top_center.png',
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeManager.webHorizontalPadding, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Gap(size.height * .03),
                BigTitleText(title1: "My", title2: 'Services'),
                Gap(size.height * .03),
                // Wrap(
                //   spacing: 16,
                //   runSpacing: 16,
                //   children: List.generate(AppConstant.myServicesList.length, (index) {
                //     return MyServiceItemWidget(data: AppConstant.myServicesList[index]);
                //   }),
                // )
                GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 3,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  shrinkWrap: true,
                  childAspectRatio: 1 / .7,
                  children: List.generate(
                    AppConstant.myProjectsList.length,
                    (index) => MyServiceItemWidget(data: AppConstant.myServicesList[index]),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
