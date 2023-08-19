import 'dart:math';

import 'package:flutter/material.dart';

class TrendPainter extends CustomPainter {
  final Color pathColor; // Color for the trend line
  final double pathWidth; // Width of the trend line
  final List<double> values; // List of numerical data points

  TrendPainter(
    this.values, {
    this.pathColor = const Color(0xff00C566), // Default path color
    this.pathWidth = 3, // Default path width
  });

  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path(); // Create a path to store the trend line
    final w = size.width; // Width of the canvas

    // Find the minimum and maximum values from the list of data points
    final yMin = values.reduce(min);
    final yMax = values.reduce(max);

    // Calculate the height range of the data points
    final yHeight = yMax - yMin;

    // Calculate the step size for the x-axis based on canvas width and number of data points
    final xAxisStep = 136 / values.length;

    var xValue = 0.0; // Initialize the x-coordinate value for drawing

    for (var i = 0; i < values.length; i++) {
      final value = yMax - values[i]; // Adjust value relative to yMax
      final yValue =
          yHeight == 0 ? (0.5 * size.height) : value / yHeight * size.height;

      if (xValue == 0) {
        // Start a new path at the initial point
        path.moveTo(xValue, value);
      } else {
        // Calculate cubic bezier control points for a smooth curve
        final previousValue = yMax - values[i - 1];
        final xPrevious = xValue - xAxisStep;
        final yPrevious = yHeight == 0
            ? (0.5 * size.height)
            : previousValue / yHeight * size.height;
        final controlPointX = xPrevious + (xValue - xPrevious) / 2;

        // Add a cubic bezier curve segment to the path
        path.cubicTo(
            controlPointX, yPrevious, controlPointX, yValue, xValue, yValue);
      }
      xValue += xAxisStep; // Move to the next x-coordinate value
    }

    // Draw the path on the canvas
    canvas.drawPath(
      path,
      Paint()
        ..color = pathColor
        ..strokeWidth = pathWidth
        ..style = PaintingStyle.stroke // The painting style
        ..strokeCap = StrokeCap.round, // The shape of stroke ends
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // Determines whether the painter should repaint when the delegate changes
    return oldDelegate != this;
  }
}
