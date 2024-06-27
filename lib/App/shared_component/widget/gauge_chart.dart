// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class ProgressGaugeWidget extends StatelessWidget {
  final double progress;

  ProgressGaugeWidget({this.progress = 0.0});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: ProgressPainter(progress: progress),
      child: Container(
        width: 100,
        height: 100,
        alignment: Alignment.center,
        child: Text(
          '${(progress * 100).toInt()}%',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class ProgressPainter extends CustomPainter {
  final double progress;
  ProgressPainter({required this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.blue // warna progress
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10.0; // ketebalan progress

    double centerX = size.width / 2;
    double centerY = size.height / 2;
    double radius = size.width / 2 - paint.strokeWidth / 2;

    canvas.drawCircle(Offset(centerX, centerY), radius, paint);

    Paint progressPaint = Paint()
      ..color = Colors.green // warna progress terisi
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10.0;

    double sweepAngle = 2 * progress * 3.14; // panjang lengkung yang diisi
    canvas.drawArc(
        Rect.fromCircle(center: Offset(centerX, centerY), radius: radius),
        -3.14 / 2,
        sweepAngle,
        false,
        progressPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
