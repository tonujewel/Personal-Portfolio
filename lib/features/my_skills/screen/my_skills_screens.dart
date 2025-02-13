import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/utils/app_constant.dart';
import '../../../core/utils/color_manager.dart';
import '../../dashboard/screen/dashboard_screen.dart';
import '../widgets/my_skills_item_widget.dart';

class MySkills extends StatelessWidget {
  const MySkills({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      color: ColorManager.bgColor,
      padding: EdgeInsets.symmetric(horizontal: size.width * .1, vertical: 16),
      child: Column(
        children: [
          BigTitleText(title1: "My ", title2: 'Skills'),
          const Gap(20),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            children: List.generate(
              AppConstant.mySkillsList.length,
              (index) {
                return MySkillItemWidget(
                  data: AppConstant.mySkillsList[index],
                  index: index,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
