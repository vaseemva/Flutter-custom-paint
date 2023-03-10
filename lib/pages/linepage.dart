import 'package:flutter/material.dart';

class Linepage extends StatelessWidget {
  const Linepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
      
      return Center(
        child: Container(
          color: Colors.white,
          width: 300,
          height: 300,
          child: CustomPaint(
            foregroundPainter: LinePainter(),
          ),
        ),
      );
    
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = 10
      ..color = Colors.red
      ..strokeCap = StrokeCap.round;
    canvas.drawLine(
        Offset(
          size.width * 1 / 6,
          size.height * 1 / 2,
        ),
        Offset(
          size.width * 5 / 6,
          size.height * 1 / 2,
        ),
        paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
