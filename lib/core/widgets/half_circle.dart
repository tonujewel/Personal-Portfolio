import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/utils/color_manager.dart';

class TopHalfCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = ColorManager.secondaryColor
      ..style = PaintingStyle.fill;

    final rect = Rect.fromLTRB(0, -size.height, size.width, size.height);

    canvas.drawArc(rect, 3.14, 3.14, true, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
