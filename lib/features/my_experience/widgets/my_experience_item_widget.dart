import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/models/work_experience_model.dart';
import '../../../core/utils/app_constant.dart';
import '../../../core/utils/color_manager.dart';
import '../screen/my_experience_screen.dart';

class MyExperienceItemWidget extends StatelessWidget {
  const MyExperienceItemWidget({super.key, required this.data, required this.index});
  final WorkExperienceModel data;
  final int index;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.companyName,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromRGBO(52, 64, 83, 1),
                    fontSize: 24,
                  ),
                ),
                Text(
                  data.date,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromRGBO(152, 161, 178, 1),
                    fontSize: 16,
                  ),
                ),
                Text(
                  data.location,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromRGBO(152, 161, 178, 1),
                    fontSize: 16,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: ColorManager.secondaryColor,
                      width: 2,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Center(
                    child: Container(
                      height: 12,
                      width: 12,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: ColorManager.secondaryColor,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: CustomPaint(
                    painter: DottedLinePainter(
                      color: ColorManager.secondaryColor,
                      strokeWidth: 2,
                      dashLength: 5,
                      dashSpacing: 3,
                    ),
                    child: Container(width: 2),
                  ),
                ),
                if (index == AppConstant.myWorkExperienceList.length - 1)
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: ColorManager.secondaryColor,
                        width: 2,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: Center(
                      child: Container(
                        height: 12,
                        width: 12,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorManager.secondaryColor,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.designation,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromRGBO(52, 64, 83, 1),
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  data.description,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromRGBO(152, 161, 178, 1),
                    fontSize: 16,
                  ),
                ),
                Gap(20)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
