import 'package:flutter/material.dart';
import 'package:hng_task_two/resources/color_manager.dart';

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final p1 = Offset(0, 100);
    final p2 = Offset(100, 0);
    final paint = Paint()
      ..color = ColorManager.primaryColor
      ..strokeWidth = 2;
    canvas.drawLine(p1, p2, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}
