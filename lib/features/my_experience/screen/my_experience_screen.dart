import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/utils/app_constant.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/size_manager.dart';
import '../../dashboard/screen/dashboard_screen.dart';
import '../widgets/my_experience_item_widget.dart';

class MyExperienceScreen extends StatelessWidget {
  const MyExperienceScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.bgColor,
      padding: EdgeInsets.symmetric(horizontal: SizeManager.webHorizontalPadding, vertical: 16),
      child: Column(
        children: [
          BigTitleText(title1: "My ", title2: 'Work Experince'),
          const Gap(20),
          Column(
            children: List.generate(AppConstant.myWorkExperienceList.length, (index) {
              return MyExperienceItemWidget(
                data: AppConstant.myWorkExperienceList[index],
                index: index,
              );
            }),
          ),
          Gap(100),
        ],
      ),
    );
  }
}


// Custom painter for dotted line
class DottedLinePainter extends CustomPainter {
  final Color color;
  final double strokeWidth;
  final double dashLength;
  final double dashSpacing;

  DottedLinePainter({
    required this.color,
    required this.strokeWidth,
    required this.dashLength,
    required this.dashSpacing,
  });

  @override
  void paint(Canvas canvas, Size size) {
    double startY = 0;
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    while (startY < size.height) {
      canvas.drawLine(
        Offset(size.width / 2, startY),
        Offset(size.width / 2, startY + dashLength),
        paint,
      );
      startY += dashLength + dashSpacing;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

