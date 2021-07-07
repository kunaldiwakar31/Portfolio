import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackGroundPainter extends CustomPainter {
  final BuildContext context;

  BackGroundPainter({required this.context});

  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;

    Paint paint = Paint();

    Path bottomLeftPath = Path();
    bottomLeftPath.moveTo(0, height * 0.8);
    bottomLeftPath.quadraticBezierTo(
        width * 0.1, height * 0.7, width * 0.2, height * 0.8);
    bottomLeftPath.quadraticBezierTo(
        width * 0.25, height * 0.85, width * 0.26, height);
    bottomLeftPath.lineTo(0, height);
    bottomLeftPath.close();

    paint.color = Colors.blueAccent[100] as Color;
    canvas.drawPath(bottomLeftPath, paint);

    Path topRightPath = Path();
    topRightPath.moveTo(width * 0.7, 0);
    topRightPath.quadraticBezierTo(
        width * 0.65, height * 0.15, width * 0.75, height * 0.3);
    topRightPath.quadraticBezierTo(
        width * 0.85, height * 0.4, width, height * 0.35);
    topRightPath.lineTo(width, 0);
    topRightPath.close();

    paint.color = Colors.deepPurpleAccent[100] as Color;
    canvas.drawPath(topRightPath, paint);

    Path topLeftPath = Path();
    topLeftPath.moveTo(width * 0.13, 0);
    topLeftPath.quadraticBezierTo(
        width * 0.17, height * 0.1, width * 0.1, height * 0.2);
    topLeftPath.quadraticBezierTo(
        width * 0.05, height * 0.25, 0, height * 0.25);
    topLeftPath.lineTo(0, 0);
    topLeftPath.close();

    paint.color = Colors.yellowAccent[100] as Color;
    canvas.drawPath(topLeftPath, paint);

    Path bottomRightPath = Path();
    bottomRightPath.moveTo(width * 0.75, height);
    bottomRightPath.quadraticBezierTo(
        width * 0.75, height * 0.9, width * 0.82, height * 0.8);
    bottomRightPath.quadraticBezierTo(
        width * 0.9, height * 0.7, width, height * 0.75);
    bottomRightPath.lineTo(width, height);
    bottomRightPath.close();

    paint.color = Colors.redAccent[100] as Color;
    canvas.drawPath(bottomRightPath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}