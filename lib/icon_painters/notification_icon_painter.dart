// ignore_for_file: non_constant_identifier_names

import 'package:animated_sliverappbar_widgets/config.dart';
import 'package:flutter/material.dart';

class NotificationIconPainter extends CustomPainter {
  const NotificationIconPainter(this.strokeWidth) : _color = iconColor;

  final double strokeWidth;
  final Color _color;

  static CustomPaint getCustomPaint(double strokeWidth) => CustomPaint(
        size: const Size.square(24),
        painter: NotificationIconPainter(strokeWidth),
      );

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.5000000, size.height * 0.7436500);
    path_0.cubicTo(
        size.width * 0.7349667,
        size.height * 0.7436500,
        size.width * 0.8436708,
        size.height * 0.7135083,
        size.width * 0.8541667,
        size.height * 0.5925208);
    path_0.cubicTo(
        size.width * 0.8541667,
        size.height * 0.4716167,
        size.width * 0.7783833,
        size.height * 0.4793917,
        size.width * 0.7783833,
        size.height * 0.3310462);
    path_0.cubicTo(
        size.width * 0.7783833,
        size.height * 0.2151725,
        size.width * 0.6685500,
        size.height * 0.08333333,
        size.width * 0.5000000,
        size.height * 0.08333333);
    path_0.cubicTo(
        size.width * 0.3314488,
        size.height * 0.08333333,
        size.width * 0.2216188,
        size.height * 0.2151725,
        size.width * 0.2216188,
        size.height * 0.3310462);
    path_0.cubicTo(
        size.width * 0.2216188,
        size.height * 0.4793917,
        size.width * 0.1458333,
        size.height * 0.4716167,
        size.width * 0.1458333,
        size.height * 0.5925208);
    path_0.cubicTo(
        size.width * 0.1563729,
        size.height * 0.7139667,
        size.width * 0.2650737,
        size.height * 0.7436500,
        size.width * 0.5000000,
        size.height * 0.7436500);
    path_0.close();

    Paint paint_0_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..color = _color
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_0, paint_0_stroke);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.5995375, size.height * 0.8690500);
    path_1.cubicTo(
        size.width * 0.5426958,
        size.height * 0.9321667,
        size.width * 0.4540292,
        size.height * 0.9329125,
        size.width * 0.3966471,
        size.height * 0.8690500);

    Paint paint_1_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..color = _color
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_1, paint_1_stroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
