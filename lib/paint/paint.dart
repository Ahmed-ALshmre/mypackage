import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pint extends StatefulWidget {
  @override
  _PintState createState() => _PintState();
}

class _PintState extends State<Pint> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: CustomPaint(
          painter: ShapePainter(),
        ),
      ),
    );
  }
}


class ShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final radius = 100.0;
    final Offset offset = Offset(1.0, 75.0);
    final Paint paint = Paint()
      ..isAntiAlias = true
      ..strokeWidth = 10.0
      ..color = Colors.blue[500]
      ..style = PaintingStyle.stroke;
    final Offset bodey = Offset(0.0, 0.0);
    final Offset bode = Offset(0.0, 100.0);
    canvas.drawCircle(offset, radius, paint);
    canvas.drawLine(bodey, bode, paint);
    final Rect rect =Rect.fromCircle(center: offset, radius:  radius);
    final Paint rectpain = Paint()
      ..isAntiAlias=true
      ..strokeWidth= 10.0
      ..color=Colors.black
      ..style=PaintingStyle.stroke;
    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return null;
  }
}
