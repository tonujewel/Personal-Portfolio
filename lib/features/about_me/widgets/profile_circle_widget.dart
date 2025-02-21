import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/utils/color_manager.dart';

class ProfileCircleWidget extends StatelessWidget {
  const ProfileCircleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      child: Column(
        children: [
          CustomPaint(
            size: Size(416, 508),
            painter: RPSCustomPainter(),
            child: Image.asset(
              'assets/images/profile_image.png',
              width: 416,
              height: 508,
            ),
          )
        ],
      ),
    );
  }
}

class HalfCircleBackground extends StatelessWidget {
  final double width;
  final double height;
  final Color backgroundColor;
  final EdgeInsetsGeometry padding;

  const HalfCircleBackground({
    super.key,
    required this.width,
    required this.height,
    required this.backgroundColor,
    this.padding = const EdgeInsets.all(0),
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width + 20,
      height: height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 0,
            child: SizedBox(
              width: width,
              height: width / 2,
              child: CustomPaint(
                painter: HalfCirclePainter(
                  color: backgroundColor,
                ),
              ),
            ),
          ),
          // Foreground content
          Padding(
            padding: EdgeInsets.symmetric(horizontal: padding.horizontal, vertical: padding.vertical),
            child: Image.asset(
              'assets/images/profile_image.png',
              width: width,
              height: height,
            ),
          ),
        ],
      ),
    );
  }
}

class HalfCirclePainter extends CustomPainter {
  final Color color;

  HalfCirclePainter({
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(0, size.height);
    path.arcToPoint(
      Offset(size.width, size.height),
      radius: Radius.elliptical(size.width / 2, size.height),
      clockwise: true,
    );
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(HalfCirclePainter oldDelegate) {
    return oldDelegate.color != color;
  }
}

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, 37);
    path_0.cubicTo(0, 16.5655, 16.5655, 0, 37, 0);
    path_0.lineTo(379, 0);
    path_0.cubicTo(399.435, 0, 416, 16.5655, 416, 37);
    path_0.lineTo(416, 338.5);
    path_0.cubicTo(416, 358.935, 399.435, 375.5, 379, 375.5);
    path_0.lineTo(356.049, 375.5);
    path_0.cubicTo(317.534, 375.5, 286.476, 407.031, 287.057, 445.541);
    path_0.lineTo(287.433, 470.442);
    path_0.cubicTo(287.745, 491.092, 271.09, 508, 250.437, 508);
    path_0.lineTo(37, 508);
    path_0.cubicTo(16.5655, 508, 0, 491.435, 0, 471);
    path_0.lineTo(0, 37);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Color(0xff3C3C3C).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(0, 37);
    path_1.cubicTo(0, 16.5655, 16.5655, 0, 37, 0);
    path_1.lineTo(379, 0);
    path_1.cubicTo(399.435, 0, 416, 16.5655, 416, 37);
    path_1.lineTo(416, 338.5);
    path_1.cubicTo(416, 358.935, 399.435, 375.5, 379, 375.5);
    path_1.lineTo(356.049, 375.5);
    path_1.cubicTo(317.534, 375.5, 286.476, 407.031, 287.057, 445.541);
    path_1.lineTo(287.433, 470.442);
    path_1.cubicTo(287.745, 491.092, 271.09, 508, 250.437, 508);
    path_1.lineTo(37, 508);
    path_1.cubicTo(16.5655, 508, 0, 491.435, 0, 471);
    path_1.lineTo(0, 37);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = Color(0xff686868).withOpacity(0.2);
    canvas.drawPath(path_1, paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
