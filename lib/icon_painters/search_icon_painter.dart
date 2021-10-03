// ignore_for_file: non_constant_identifier_names

import 'package:animated_sliverappbar_widgets/config.dart';
import 'package:flutter/material.dart';

class SearchIconPainter extends CustomPainter {
  const SearchIconPainter() : _color = iconColor;

  final Color _color;

  static const CustomPaint customPaint = CustomPaint(
    size: Size.square(24),
    painter: SearchIconPainter(),
  );

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5
      ..color = _color
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;
    canvas.drawCircle(Offset(size.width * 0.4902750, size.height * 0.4902750),
        size.width * 0.3745233, paint_0_stroke);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.7507625, size.height * 0.7702125);
    path_1.lineTo(size.width * 0.8975958, size.height * 0.9166667);

    Paint paint_1_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5
      ..color = _color
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_1, paint_1_stroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
