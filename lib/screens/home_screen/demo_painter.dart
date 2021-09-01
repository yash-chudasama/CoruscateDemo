import 'package:flutter/material.dart';

import 'app_colors.dart';

class DemoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Drawing Rounded Rectangle
    drawCustomLine(canvas, Offset(20, 15), 70, 20, blueColor);
    drawCustomLine(canvas, Offset(21, 16), 68, 16, backgroundColor);

    drawCustomLine(canvas, Offset(125, 10), 70, 20, white);
    drawCustomLine(canvas, Offset(126, 11), 68, 16, backgroundColor);

    drawCustomLine(canvas, Offset(190, 140), 60, 20, white60);
    drawCustomLine(canvas, Offset(220, 150), 60, 20, midnightBlueColor);
    drawCustomLine(canvas, Offset(250, 180), 40, 15, midnightBlueColor);

    // Drawing Circles
    drawOval(canvas, midnightBlueColor, offset: Offset(80, 60), radius: 6);
    drawOval(canvas, Colors.blueAccent, offset: Offset(95, 60), radius: 6);
    drawOval(canvas, white, offset: Offset(110, 60), radius: 6);

    drawOval(canvas, Colors.blueAccent, offset: Offset(190, 60), radius: 8);
    drawOval(canvas, white60, offset: Offset(230, 60), radius: 20);

    drawOval(canvas, Colors.indigo, offset: Offset(380, 60), radius: 20);
    drawOval(canvas, backgroundColor, offset: Offset(380, 60), radius: 14);

    drawOval(canvas, midnightBlueColor, offset: Offset(60, 170), radius: 60);
    drawOval(canvas, backgroundColor, offset: Offset(60, 170), radius: 54);
    drawOval(canvas, white60, offset: Offset(60, 170), radius: 44);
    drawOval(canvas, backgroundColor, offset: Offset(60, 170), radius: 36);
    drawOval(canvas, Colors.blueAccent, offset: Offset(60, 170), radius: 30);
    drawOval(canvas, backgroundColor, offset: Offset(60, 170), radius: 22);
    drawOval(canvas, white, offset: Offset(60, 170), radius: 16);
    drawOval(canvas, backgroundColor, offset: Offset(60, 170), radius: 10);

    drawOval(canvas, yellowColor, offset: Offset(260, 100), radius: 15);
    drawOval(canvas, backgroundColor, offset: Offset(260, 100), radius: 8);

    drawOval(canvas, white, offset: Offset(200, 120), radius: 20);
    drawOval(canvas, Colors.blueAccent.shade100,
        offset: Offset(200, 120), radius: 8);

    drawOval(canvas, white60, offset: Offset(360, 120), radius: 30);
    drawOval(canvas, midnightBlueColor, offset: Offset(360, 120), radius: 15);
    drawOval(canvas, yellowColor, offset: Offset(320, 200), radius: 20);

    // Drawing Cross
    drawCross(canvas, Offset(280, 10), 50, white, width: 12);
    drawCross(canvas, Offset(282, 12), 46, backgroundColor, width: 10);
    drawCross(canvas, Offset(130, 190), 15, midnightBlueColor);

    // Drawing Rounded Corner Cross
    drawCross(canvas, Offset(116, 20), 20, white60, rounded: true);

    drawCross(canvas, Offset(300, 160), 12, yellowColor, rounded: true);

    // Drawing ZigZag
    drawZigzag(canvas, Offset(340, 15), Colors.indigo);

    // Drawing Rectangle Box
    canvas.drawRect(Rect.fromLTWH(350, 170, 50, 50),
        (Paint()..color = Colors.indigo.shade600));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

  void drawCustomLine(
      Canvas canvas, Offset offset, double height, double width, Color color) {
    // Paint Object
    final paint = Paint()
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.round
      ..strokeWidth = width
      ..color = color;

    canvas.drawLine(
        Offset(offset.dx + height * 0.8, offset.dy),
        Offset(
          offset.dx,
          offset.dy + height,
        ),
        paint);
  }

  void drawCross(Canvas canvas, Offset offset, double height, Color color,
      {double width = 4.0, bool rounded = false}) {
    // Paint Object
    final paint = Paint()
      ..color = color
      ..strokeWidth = width
      ..strokeCap = rounded ? StrokeCap.round : StrokeCap.square;
    canvas.drawLine(
        offset,
        Offset(
          offset.dx + height,
          offset.dy + height,
        ),
        paint);
    canvas.drawLine(
        Offset(offset.dx, offset.dy + height),
        Offset(
          offset.dx + height,
          offset.dy,
        ),
        paint);
  }

  void drawZigzag(
    Canvas canvas,
    Offset offset,
    Color color, {
    double width = 60.0,
    double height = 20.0,
  }) {
    // Paint Object
    final paint = Paint()
      ..color = color
      ..strokeWidth = 4.0;
    canvas.drawLine(
        offset,
        Offset(
          offset.dx + (width / 5),
          offset.dy + height,
        ),
        paint);
    canvas.drawLine(
        Offset(
          offset.dx + (width / 5),
          offset.dy + height,
        ),
        Offset(
          offset.dx + 2 * (width / 5),
          offset.dy,
        ),
        paint);

    canvas.drawLine(
        Offset(
          offset.dx + 2 * (width / 5),
          offset.dy,
        ),
        Offset(
          offset.dx + 3 * (width / 5),
          offset.dy + height,
        ),
        paint);

    canvas.drawLine(
        Offset(
          offset.dx + 3 * (width / 5),
          offset.dy + height,
        ),
        Offset(
          offset.dx + 4 * (width / 5),
          offset.dy,
        ),
        paint);

    canvas.drawLine(
        Offset(
          offset.dx + 4 * (width / 5),
          offset.dy,
        ),
        Offset(
          offset.dx + 5 * (width / 5),
          offset.dy + height,
        ),
        paint);
  }

  void drawOval(
    // Paint Object
    Canvas canvas,
    Color foregroundColor, {
    required double radius,
    required Offset offset,
  }) {
    final paint = Paint()..color = foregroundColor;
    canvas.drawOval(Rect.fromCircle(center: offset, radius: radius), paint);
  }
}
