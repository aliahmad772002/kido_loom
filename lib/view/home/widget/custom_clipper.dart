import 'dart:ui';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class custompaint1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.8974359, size.height * 0.09316770);
    path_0.lineTo(size.width * 0.1025641, size.height * 0.09316770);
    path_0.cubicTo(
        size.width * 0.06857744,
        size.height * 0.09316770,
        size.width * 0.04102564,
        size.height * 0.1599081,
        size.width * 0.04102564,
        size.height * 0.2422360);
    path_0.lineTo(size.width * 0.04102564, size.height * 0.6917826);
    path_0.cubicTo(
        size.width * 0.04102564,
        size.height * 0.7823913,
        size.width * 0.07412077,
        size.height * 0.8520435,
        size.width * 0.1111597,
        size.height * 0.8393913);
    path_0.lineTo(size.width * 0.9060308, size.height * 0.5677801);
    path_0.cubicTo(
        size.width * 0.9363974,
        size.height * 0.5574043,
        size.width * 0.9589744,
        size.height * 0.4944565,
        size.width * 0.9589744,
        size.height * 0.4201733);
    path_0.lineTo(size.width * 0.9589744, size.height * 0.2422360);
    path_0.cubicTo(
        size.width * 0.9589744,
        size.height * 0.1599081,
        size.width * 0.9314231,
        size.height * 0.09316770,
        size.width * 0.8974359,
        size.height * 0.09316770);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.shader = ui.Gradient.linear(
        Offset(size.width * 1.030400, size.height * 0.09627329),
        Offset(size.width * 0.1723644, size.height * 0.6134230),
        [Color(0xffFFE1BE).withOpacity(1), Color(0xffF9C281).withOpacity(1)],
        [0, 1]);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    throw UnimplementedError();
  }
}

class custompaint2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.8889231, size.height * 0.08412553);
    path_0.lineTo(size.width * 0.09405205, size.height * 0.3144239);
    path_0.cubicTo(
        size.width * 0.06364923,
        size.height * 0.3232324,
        size.width * 0.04102564,
        size.height * 0.3771745,
        size.width * 0.04102564,
        size.height * 0.4408564);
    path_0.lineTo(size.width * 0.04102564, size.height * 0.7360479);
    path_0.cubicTo(
        size.width * 0.04102564,
        size.height * 0.8136436,
        size.width * 0.07412077,
        size.height * 0.8732926,
        size.width * 0.1111597,
        size.height * 0.8624574);
    path_0.lineTo(size.width * 0.9060308, size.height * 0.6298564);
    path_0.cubicTo(
        size.width * 0.9363974,
        size.height * 0.6209681,
        size.width * 0.9589744,
        size.height * 0.5670638,
        size.width * 0.9589744,
        size.height * 0.5034463);
    path_0.lineTo(size.width * 0.9589744, size.height * 0.2105580);
    path_0.cubicTo(
        size.width * 0.9589744,
        size.height * 0.1330319,
        size.width * 0.9259359,
        size.height * 0.07340213,
        size.width * 0.8889231,
        size.height * 0.08412553);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.shader = ui.Gradient.linear(
        Offset(size.width * -10.84387, size.height * 0.3031915),
        Offset(size.width * 0.9767333, size.height * 0.5464734),
        [Color(0xffFFB5D8).withOpacity(1), Color(0xffF866AC).withOpacity(1)],
        [0, 1]);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}

class custompaint3 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.1025641, size.height * 0.8447205);
    path_0.lineTo(size.width * 0.8974359, size.height * 0.8447205);
    path_0.cubicTo(
        size.width * 0.9314231,
        size.height * 0.8447205,
        size.width * 0.9589744,
        size.height * 0.7779814,
        size.width * 0.9589744,
        size.height * 0.6956522);
    path_0.lineTo(size.width * 0.9589744, size.height * 0.2461062);
    path_0.cubicTo(
        size.width * 0.9589744,
        size.height * 0.1554963,
        size.width * 0.9258795,
        size.height * 0.08584286,
        size.width * 0.8888410,
        size.height * 0.09849938);
    path_0.lineTo(size.width * 0.09396846, size.height * 0.3701081);
    path_0.cubicTo(
        size.width * 0.06360333,
        size.height * 0.3804839,
        size.width * 0.04102564,
        size.height * 0.4434317,
        size.width * 0.04102564,
        size.height * 0.5177149);
    path_0.lineTo(size.width * 0.04102564, size.height * 0.6956522);
    path_0.cubicTo(
        size.width * 0.04102564,
        size.height * 0.7779814,
        size.width * 0.06857744,
        size.height * 0.8447205,
        size.width * 0.1025641,
        size.height * 0.8447205);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.9391333, size.height * 0.2857143),
        Offset(size.width * 0.3510564, size.height * 0.7295839),
        [Color(0xffFEBCFF).withOpacity(1), Color(0xffFC7EFF).withOpacity(1)],
        [0, 1]);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}

class custompaint4 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.shader = ui.Gradient.linear(
        Offset(size.width * -14.23077, size.height * 0.04448910),
        Offset(size.width * 0.9629615, size.height * 0.3334806),
        [Color(0xffBBFBFF).withOpacity(1), Color(0xff88F0FE).withOpacity(1)],
        [0, 1]);
    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromLTWH(size.width * 0.04102564, size.height * 0.1119403,
                size.width * 0.9179487, size.height * 0.7014925),
            bottomRight: Radius.circular(size.width * 0.06153846),
            bottomLeft: Radius.circular(size.width * 0.06153846),
            topLeft: Radius.circular(size.width * 0.06153846),
            topRight: Radius.circular(size.width * 0.06153846)),
        paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}
