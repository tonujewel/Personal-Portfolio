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
      color: ColorManager.bgColor,
      padding: EdgeInsets.symmetric(horizontal: SizeManager.webHorizontalPadding, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BigTitleText(title1: "My", title2: 'Services'),
          const Gap(20),
          GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 3,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: size.width / (size.height * 1.6),
            children: List.generate(AppConstant.myServicesList.length, (index) {
              return MyServiceItemWidget(data: AppConstant.myServicesList[index]);
            }),
          ),
        ],
      ),
    );
  }
}
