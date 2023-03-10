import 'package:flutter/material.dart';

class RectanglePage extends StatelessWidget {
  const RectanglePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        color: Colors.white,
        child: CustomPaint(
          painter: RectanglePainter(),
        ),
      ),
    );
  }
}

class RectanglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = 10
      ..strokeCap = StrokeCap.round
      ..style=PaintingStyle.stroke
      ..color = Colors.blue;

    final rect = Rect.fromPoints(
        Offset(size.width * 1 / 4, size.height * 1 / 4),
        Offset(size.width * 3 / 4, size.height * 3 / 4));
    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
