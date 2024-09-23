import 'package:flutter/material.dart';

class ArrowLinePainter extends CustomPainter {
  final Color arrowColor;

  ArrowLinePainter({super.repaint, required this.arrowColor});
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = arrowColor
      ..strokeWidth = 1;

    // Drawing the horizontal line
    double startX = 10;
    double endX = size.width - 10;
    double centerY = size.height / 2;

    canvas.drawLine(Offset(startX, centerY), Offset(endX, centerY), paint);

    // Drawing the arrows at both ends
    double arrowSize = 7;

    // Left Arrow (Straight Lines)
    canvas.drawLine(Offset(startX, centerY), Offset(startX + arrowSize, centerY - arrowSize / 2),
        paint); // Top line
    canvas.drawLine(Offset(startX, centerY), Offset(startX + arrowSize, centerY + arrowSize / 2),
        paint); // Bottom line

// Right Arrow (Straight Lines)
    canvas.drawLine(Offset(endX, centerY), Offset(endX - arrowSize, centerY - arrowSize / 2),
        paint); // Top line
    canvas.drawLine(Offset(endX, centerY), Offset(endX - arrowSize, centerY + arrowSize / 2),
        paint); // Bottom line

    // // Left arrow
    // Path leftArrow = Path();
    // leftArrow.moveTo(startX, centerY); // Arrow tip
    // leftArrow.lineTo(startX + arrowSize, centerY - arrowSize / 2); // Top side
    // leftArrow.lineTo(startX + arrowSize, centerY + arrowSize / 2); // Bottom side
    // leftArrow.close();
    // canvas.drawPath(leftArrow, paint);

    // // Right arrow
    // Path rightArrow = Path();
    // rightArrow.moveTo(endX, centerY); // Arrow tip
    // rightArrow.lineTo(endX - arrowSize, centerY - arrowSize / 2); // Top side
    // rightArrow.lineTo(endX - arrowSize, centerY + arrowSize / 2); // Bottom side
    // rightArrow.close();
    // canvas.drawPath(rightArrow, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
