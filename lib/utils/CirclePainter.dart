import 'dart:math';
import 'package:flutter/material.dart';

class CirclePainter extends CustomPainter {
  final double percentage1;
  final double percentage2;
  final double percentage3;

  CirclePainter({required this.percentage1, required this.percentage2, required this.percentage3});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;
    final startAngle = -pi / 2;

    final arc1Paint = Paint()..color = Colors.brown;
    final arc2Paint = Paint()..color = Colors.green;
    final arc3Paint = Paint()..color = Colors.brown.shade200;

    final totalPercentage = percentage1 + percentage2 + percentage3;
    final sweepAngle1 = 2 * pi * (percentage1 / totalPercentage);
    final sweepAngle2 = 2 * pi * (percentage2 / totalPercentage);
    final sweepAngle3 = 2 * pi * (percentage3 / totalPercentage);

    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), startAngle, sweepAngle1, true, arc1Paint);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), startAngle + sweepAngle1, sweepAngle2, true, arc2Paint);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), startAngle + sweepAngle1 + sweepAngle2, sweepAngle3, true, arc3Paint);

    _drawPercentageLabel(canvas, center, radius, percentage1, startAngle, sweepAngle1, Colors.white);
    _drawPercentageLabel(canvas, center, radius, percentage2, startAngle + sweepAngle1, sweepAngle2, Colors.white);
    _drawPercentageLabel(canvas, center, radius, percentage3, startAngle + sweepAngle1 + sweepAngle2, sweepAngle3, Colors.white);
  }

  void _drawPercentageLabel(Canvas canvas, Offset center, double radius, double percentage, double startAngle, double sweepAngle, Color textColor) {
    final double angle = startAngle + sweepAngle / 2;
    final double x = center.dx + radius * 0.6 * cos(angle);
    final double y = center.dy + radius * 0.6 * sin(angle);

    final textStyle = TextStyle(color: textColor, fontSize: 12, fontWeight: FontWeight.bold);
    final textSpan = TextSpan(text: '${(percentage )}', style: textStyle);
    final textPainter = TextPainter(text: textSpan, textDirection: TextDirection.ltr);

    textPainter.layout();
    final textOffset = Offset(x - textPainter.width / 2, y - textPainter.height / 2);
    textPainter.paint(canvas, textOffset);
  }

  @override
  bool shouldRepaint(CirclePainter oldDelegate) {
    return percentage1 != oldDelegate.percentage1 ||
        percentage2 != oldDelegate.percentage2 ||
        percentage3 != oldDelegate.percentage3;
  }
}
