import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'demo_painter.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Container(
        color: backgroundColor,
        child: CustomPaint(
          painter: DemoPainter(),
        ),
      ),
    );
  }
}
