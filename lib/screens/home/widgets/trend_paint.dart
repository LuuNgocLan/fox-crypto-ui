import 'dart:math';

import 'package:flutter/material.dart';

class TrendPainter extends CustomPainter {
  final Color pathColor;
  final double pathWidth;
  final List<double> values;

  TrendPainter(
    this.values, {
    this.pathColor = const Color(0xff00C566),
    this.pathWidth = 3,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    final w = size.width;
    final yMin = values.reduce(min);
    final yMax = values.reduce(max);
    final h = yMax - yMin;
    path.moveTo(0 * (136 / 6), h - values.first);
    for (var i = 0; i < values.length; i++) {
      path.lineTo(i * (136 / 6), h - values[i]);
    }

    canvas.drawPath(
      path,
      Paint()
        ..color = pathColor
        ..strokeWidth = pathWidth
        ..style = PaintingStyle.stroke
        ..strokeJoin = StrokeJoin.round,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
