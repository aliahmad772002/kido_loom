import 'package:flutter/material.dart';
import 'dart:ui' as ui;


class fcustompaint1 extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width*0.03846154,size.height*0.1673820);
    path_0.cubicTo(size.width*0.03846154,size.height*0.1104944,size.width*0.06601333,size.height*0.06437768,size.width*0.1000000,size.height*0.06437768);
    path_0.lineTo(size.width*0.9025641,size.height*0.06437768);
    path_0.cubicTo(size.width*0.9365513,size.height*0.06437768,size.width*0.9641026,size.height*0.1104944,size.width*0.9641026,size.height*0.1673820);
    path_0.lineTo(size.width*0.9641026,size.height*0.5650644);
    path_0.cubicTo(size.width*0.9641026,size.height*0.6154335,size.width*0.9423385,size.height*0.6584163,size.width*0.9126538,size.height*0.6666738);
    path_0.lineTo(size.width*0.1100895,size.height*0.8899442);
    path_0.cubicTo(size.width*0.07258821,size.height*0.9003777,size.width*0.03846154,size.height*0.8519657,size.width*0.03846154,size.height*0.7883348);
    path_0.lineTo(size.width*0.03846154,size.height*0.1673820);
    path_0.close();

Paint paint0Fill = Paint()..style=PaintingStyle.fill;
paint0Fill.shader = ui.Gradient.linear(Offset(size.width*0.02179487,size.height*0.08702489), Offset(size.width*0.4320564,size.height*0.9972833), [const Color(0xffCFF0FF).withOpacity(1),const Color(0xff80C8EA).withOpacity(1)], [0,1]);
canvas.drawPath(path_0,paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
  
}

class fcustompaint2 extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
   Path path_0 = Path();
    path_0.moveTo(size.width*0.03846154,size.height*0.5310483);
    path_0.cubicTo(size.width*0.03846154,size.height*0.4628145,size.width*0.06022487,size.height*0.4045890,size.width*0.08991051,size.height*0.3934017);
    path_0.lineTo(size.width*0.8924744,size.height*0.09094709);
    path_0.cubicTo(size.width*0.9299769,size.height*0.07681453,size.width*0.9641026,size.height*0.1423953,size.width*0.9641026,size.height*0.2285936);
    path_0.lineTo(size.width*0.9641026,size.height*0.7151163);
    path_0.cubicTo(size.width*0.9641026,size.height*0.7921802,size.width*0.9365513,size.height*0.8546512,size.width*0.9025641,size.height*0.8546512);
    path_0.lineTo(size.width*0.1000000,size.height*0.8546512);
    path_0.cubicTo(size.width*0.06601333,size.height*0.8546512,size.width*0.03846154,size.height*0.7921802,size.width*0.03846154,size.height*0.7151163);
    path_0.lineTo(size.width*0.03846154,size.height*0.5310483);
    path_0.close();

Paint paint0Fill = Paint()..style=PaintingStyle.fill;
paint0Fill.shader = ui.Gradient.radial(const Offset(0,0),size.width*0.002564103, [const Color(0xffF9B6FF).withOpacity(1),const Color(0xffF57BFF).withOpacity(1)], [0,1]);
canvas.drawPath(path_0,paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
  
}

class fcustompaint3 extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width*0.03846154,size.height*0.2392638);
    path_0.cubicTo(size.width*0.03846154,size.height*0.1579460,size.width*0.06601333,size.height*0.09202454,size.width*0.1000000,size.height*0.09202454);
    path_0.lineTo(size.width*0.9025641,size.height*0.09202454);
    path_0.cubicTo(size.width*0.9365513,size.height*0.09202454,size.width*0.9641026,size.height*0.1579460,size.width*0.9641026,size.height*0.2392638);
    path_0.lineTo(size.width*0.9641026,size.height*0.6974356);
    path_0.cubicTo(size.width*0.9641026,size.height*0.7883926,size.width*0.9299769,size.height*0.8575951,size.width*0.8924744,size.height*0.8426810);
    path_0.lineTo(size.width*0.08991051,size.height*0.5235270);
    path_0.cubicTo(size.width*0.06022487,size.height*0.5117221,size.width*0.03846154,size.height*0.4502816,size.width*0.03846154,size.height*0.3782804);
    path_0.lineTo(size.width*0.03846154,size.height*0.2392638);
    path_0.close();

Paint paint0Fill = Paint()..style=PaintingStyle.fill;
paint0Fill.shader = ui.Gradient.linear(Offset(size.width*0.1807692,size.height*0.09202454), Offset(size.width*0.6615385,size.height*0.5030675), [const Color(0xffFFE0BB).withOpacity(1),const Color(0xffF9C281).withOpacity(1)], [0,1]);
canvas.drawPath(path_0,paint0Fill);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }

}

class fcustompaint4 extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
   Path path_0 = Path();
    path_0.moveTo(size.width*0.03846154,size.height*0.2412153);
    path_0.cubicTo(size.width*0.03846154,size.height*0.1502577,size.width*0.07258821,size.height*0.08105583,size.width*0.1100895,size.height*0.09596871);
    path_0.lineTo(size.width*0.9126538,size.height*0.4151233);
    path_0.cubicTo(size.width*0.9423385,size.height*0.4269282,size.width*0.9641026,size.height*0.4883687,size.width*0.9641026,size.height*0.5603699);
    path_0.lineTo(size.width*0.9641026,size.height*0.6993865);
    path_0.cubicTo(size.width*0.9641026,size.height*0.7807055,size.width*0.9365513,size.height*0.8466258,size.width*0.9025641,size.height*0.8466258);
    path_0.lineTo(size.width*0.1000000,size.height*0.8466258);
    path_0.cubicTo(size.width*0.06601333,size.height*0.8466258,size.width*0.03846154,size.height*0.7807055,size.width*0.03846154,size.height*0.6993865);
    path_0.lineTo(size.width*0.03846154,size.height*0.2412153);
    path_0.close();

Paint paint0Fill = Paint()..style=PaintingStyle.fill;
paint0Fill.shader = ui.Gradient.linear(Offset(size.width*0.1410256,size.height*0.3404902), Offset(size.width*0.8217949,size.height*0.9202454), [const Color(0xffFFBADB).withOpacity(1),const Color(0xffF866AC).withOpacity(1)], [0,1]);
canvas.drawPath(path_0,paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
  
}

class fcustompaint5 extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
             
Paint paint0Fill = Paint()..style=PaintingStyle.fill;
paint0Fill.shader = ui.Gradient.linear(Offset(size.width*-14.33318,size.height*0.07997841), Offset(size.width*0.9593692,size.height*0.5893888), [const Color(0xffBBFBFF).withOpacity(1),const Color(0xff88F0FE).withOpacity(1)], [0,1]);
canvas.drawRRect(RRect.fromRectAndCorners(Rect.fromLTWH(size.width*0.04102564,size.height*0.1401869,size.width*0.9230769,size.height*0.6261682),bottomRight: Radius.circular(size.width*0.06153846),bottomLeft:  Radius.circular(size.width*0.06153846),topLeft:  Radius.circular(size.width*0.06153846),topRight:  Radius.circular(size.width*0.06153846)),paint0Fill);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
  
    throw UnimplementedError();
  }
  
}