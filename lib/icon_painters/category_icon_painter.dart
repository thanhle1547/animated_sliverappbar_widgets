// ignore_for_file: non_constant_identifier_names

import 'package:animated_sliverappbar_widgets/config.dart';
import 'package:flutter/material.dart';

class CategoryIconPainter extends CustomPainter {
  const CategoryIconPainter(this.strokeWidth) : _color = iconColor;

  final double strokeWidth;
  final Color _color;

  static CustomPaint getCustomPaint(double strokeWidth) => CustomPaint(
        size: const Size.square(24),
        painter: CategoryIconPainter(strokeWidth),
      );

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.1250000, size.height * 0.2708333);
    path_0.cubicTo(
        size.width * 0.1250000,
        size.height * 0.1614496,
        size.width * 0.1261712,
        size.height * 0.1250000,
        size.width * 0.2708333,
        size.height * 0.1250000);
    path_0.cubicTo(
        size.width * 0.4154954,
        size.height * 0.1250000,
        size.width * 0.4166667,
        size.height * 0.1614496,
        size.width * 0.4166667,
        size.height * 0.2708333);
    path_0.cubicTo(
        size.width * 0.4166667,
        size.height * 0.3802171,
        size.width * 0.4171292,
        size.height * 0.4166667,
        size.width * 0.2708333,
        size.height * 0.4166667);
    path_0.cubicTo(
        size.width * 0.1245387,
        size.height * 0.4166667,
        size.width * 0.1250000,
        size.height * 0.3802171,
        size.width * 0.1250000,
        size.height * 0.2708333);
    path_0.close();

    Paint paint_0_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..color = _color
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_0, paint_0_stroke);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.5833333, size.height * 0.2708333);
    path_1.cubicTo(
        size.width * 0.5833333,
        size.height * 0.1614496,
        size.width * 0.5845042,
        size.height * 0.1250000,
        size.width * 0.7291667,
        size.height * 0.1250000);
    path_1.cubicTo(
        size.width * 0.8738292,
        size.height * 0.1250000,
        size.width * 0.8750000,
        size.height * 0.1614496,
        size.width * 0.8750000,
        size.height * 0.2708333);
    path_1.cubicTo(
        size.width * 0.8750000,
        size.height * 0.3802171,
        size.width * 0.8754625,
        size.height * 0.4166667,
        size.width * 0.7291667,
        size.height * 0.4166667);
    path_1.cubicTo(
        size.width * 0.5828708,
        size.height * 0.4166667,
        size.width * 0.5833333,
        size.height * 0.3802171,
        size.width * 0.5833333,
        size.height * 0.2708333);
    path_1.close();

    Paint paint_1_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..color = _color
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_1, paint_1_stroke);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.1250000, size.height * 0.7291667);
    path_2.cubicTo(
        size.width * 0.1250000,
        size.height * 0.6197833,
        size.width * 0.1261712,
        size.height * 0.5833333,
        size.width * 0.2708333,
        size.height * 0.5833333);
    path_2.cubicTo(
        size.width * 0.4154954,
        size.height * 0.5833333,
        size.width * 0.4166667,
        size.height * 0.6197833,
        size.width * 0.4166667,
        size.height * 0.7291667);
    path_2.cubicTo(
        size.width * 0.4166667,
        size.height * 0.8385500,
        size.width * 0.4171292,
        size.height * 0.8750000,
        size.width * 0.2708333,
        size.height * 0.8750000);
    path_2.cubicTo(
        size.width * 0.1245387,
        size.height * 0.8750000,
        size.width * 0.1250000,
        size.height * 0.8385500,
        size.width * 0.1250000,
        size.height * 0.7291667);
    path_2.close();

    Paint paint_2_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..color = _color
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_2, paint_2_stroke);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.5833333, size.height * 0.7291667);
    path_3.cubicTo(
        size.width * 0.5833333,
        size.height * 0.6197833,
        size.width * 0.5845042,
        size.height * 0.5833333,
        size.width * 0.7291667,
        size.height * 0.5833333);
    path_3.cubicTo(
        size.width * 0.8738292,
        size.height * 0.5833333,
        size.width * 0.8750000,
        size.height * 0.6197833,
        size.width * 0.8750000,
        size.height * 0.7291667);
    path_3.cubicTo(
        size.width * 0.8750000,
        size.height * 0.8385500,
        size.width * 0.8754625,
        size.height * 0.8750000,
        size.width * 0.7291667,
        size.height * 0.8750000);
    path_3.cubicTo(
        size.width * 0.5828708,
        size.height * 0.8750000,
        size.width * 0.5833333,
        size.height * 0.8385500,
        size.width * 0.5833333,
        size.height * 0.7291667);
    path_3.close();

    Paint paint_3_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..color = _color
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_3, paint_3_stroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
