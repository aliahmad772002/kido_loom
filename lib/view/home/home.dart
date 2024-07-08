import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kido_loom/utils/color.dart';
import 'package:kido_loom/view/home/widget/button1.dart';
import 'package:kido_loom/view/home/widget/button2.dart';
import 'package:kido_loom/widgets/appbar.dart';
import 'dart:ui' as ui;


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        gradient: bgColor,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: Appbar(),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: height * 0.37,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: container1,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('My child',
                                style: TextStyle(
                                    fontSize: width * 0.028, color: font2)),
                            Text('David Sienfeld',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: width * 0.04,
                                    color: font1)),
                            Row(
                              children: [
                                Text('Status',
                                    style: TextStyle(
                                        fontSize: width * 0.028, color: font2)),
                                SizedBox(width: width * 0.02),
                                Text('Present',
                                    style: TextStyle(
                                        fontSize: width * 0.028, color: green)),
                              ],
                            ),
                            Text('Joined: 12/12/2023',
                                style: TextStyle(
                                    fontSize: width * 0.028, color: font2)),
                            SizedBox(height: height * 0.03),
                            Button(
                              'Attendance',
                              'images/calendar.png',
                              'images/circle.png',
                              height,
                              width,
                            ),
                            SizedBox(height: height * 0.01),
                            Button(
                              'Room#: 3',
                              'images/calendar.png',
                              'images/circle.png',
                              height,
                              width,
                            ),
                            SizedBox(height: height * 0.01),
                            Button(
                              'Today’s schedule',
                              'images/calendar.png',
                              'images/circle.png',
                              height,
                              width,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: height * 0.33,
                              width: width * 0.4,
                              decoration: BoxDecoration(
                                border: Border.all(color: white),
                                borderRadius: BorderRadius.circular(height / 2),
                              ),
                              child: Center(
                                child: SizedBox(
                                  height: height * 0.3,
                                  width: width * 0.35,
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.circular(height / 2),
                                    child: Image.asset(
                                      'images/child.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'images/feed1.png',
                    width: width * 0.25,
                  ),
                  Image.asset(
                    'images/sleep1.png',
                    width: width * 0.25,
                  ),
                  Image.asset(
                    'images/diaper1.png',
                    width: width * 0.25,
                  ),
                ],
              ),
             
              Stack(children: [ Container(
                  height: height*0.15,
                  width: width*1,
                  
                  child: CustomPaint(painter: custompaint1(),child: Column(children: [Padding(
                    padding: const EdgeInsets.only(left: 50,top: 15),
                    child: Row(children: [ImageIcon(AssetImage('assets/icons/stats.png')),Text('waqas')],),
                  )],),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Container(height: height*0.15,
                    width: width*1,
                    
                    child: CustomPaint(painter: custompaint2(),),),
                    
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Container(height: height*0.15,
                      width: width*1,
                      
                      child: CustomPaint(painter: custompaint3(),),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 170),
                  child: Container(
                    height: height*0.15,
                        width: width*1,
                        
                        child: CustomPaint(painter: custompaint4(),)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 180),
                  child: SizedBox(height: height*0.43,child: Image.asset('images/Frame.png')),
                )
                ],)
      
            ],
          ),
        ),
      ),
    );
  }
  
}

class custompaint1 extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
   Path path_0 = Path();
    path_0.moveTo(size.width*0.8974359,size.height*0.09316770);
    path_0.lineTo(size.width*0.1025641,size.height*0.09316770);
    path_0.cubicTo(size.width*0.06857744,size.height*0.09316770,size.width*0.04102564,size.height*0.1599081,size.width*0.04102564,size.height*0.2422360);
    path_0.lineTo(size.width*0.04102564,size.height*0.6917826);
    path_0.cubicTo(size.width*0.04102564,size.height*0.7823913,size.width*0.07412077,size.height*0.8520435,size.width*0.1111597,size.height*0.8393913);
    path_0.lineTo(size.width*0.9060308,size.height*0.5677801);
    path_0.cubicTo(size.width*0.9363974,size.height*0.5574043,size.width*0.9589744,size.height*0.4944565,size.width*0.9589744,size.height*0.4201733);
    path_0.lineTo(size.width*0.9589744,size.height*0.2422360);
    path_0.cubicTo(size.width*0.9589744,size.height*0.1599081,size.width*0.9314231,size.height*0.09316770,size.width*0.8974359,size.height*0.09316770);
    path_0.close();

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.shader = ui.Gradient.linear(Offset(size.width*1.030400,size.height*0.09627329), Offset(size.width*0.1723644,size.height*0.6134230), [Color(0xffFFE1BE).withOpacity(1),Color(0xffF9C281).withOpacity(1)], [0,1]);
canvas.drawPath(path_0,paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    
    throw UnimplementedError();
  }
  
}

class custompaint2 extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
   Path path_0 = Path();
    path_0.moveTo(size.width*0.8889231,size.height*0.08412553);
    path_0.lineTo(size.width*0.09405205,size.height*0.3144239);
    path_0.cubicTo(size.width*0.06364923,size.height*0.3232324,size.width*0.04102564,size.height*0.3771745,size.width*0.04102564,size.height*0.4408564);
    path_0.lineTo(size.width*0.04102564,size.height*0.7360479);
    path_0.cubicTo(size.width*0.04102564,size.height*0.8136436,size.width*0.07412077,size.height*0.8732926,size.width*0.1111597,size.height*0.8624574);
    path_0.lineTo(size.width*0.9060308,size.height*0.6298564);
    path_0.cubicTo(size.width*0.9363974,size.height*0.6209681,size.width*0.9589744,size.height*0.5670638,size.width*0.9589744,size.height*0.5034463);
    path_0.lineTo(size.width*0.9589744,size.height*0.2105580);
    path_0.cubicTo(size.width*0.9589744,size.height*0.1330319,size.width*0.9259359,size.height*0.07340213,size.width*0.8889231,size.height*0.08412553);
    path_0.close();

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.shader = ui.Gradient.linear(Offset(size.width*-10.84387,size.height*0.3031915), Offset(size.width*0.9767333,size.height*0.5464734), [Color(0xffFFB5D8).withOpacity(1),Color(0xffF866AC).withOpacity(1)], [0,1]);
canvas.drawPath(path_0,paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
  
}
 
class custompaint3 extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width*0.1025641,size.height*0.8447205);
    path_0.lineTo(size.width*0.8974359,size.height*0.8447205);
    path_0.cubicTo(size.width*0.9314231,size.height*0.8447205,size.width*0.9589744,size.height*0.7779814,size.width*0.9589744,size.height*0.6956522);
    path_0.lineTo(size.width*0.9589744,size.height*0.2461062);
    path_0.cubicTo(size.width*0.9589744,size.height*0.1554963,size.width*0.9258795,size.height*0.08584286,size.width*0.8888410,size.height*0.09849938);
    path_0.lineTo(size.width*0.09396846,size.height*0.3701081);
    path_0.cubicTo(size.width*0.06360333,size.height*0.3804839,size.width*0.04102564,size.height*0.4434317,size.width*0.04102564,size.height*0.5177149);
    path_0.lineTo(size.width*0.04102564,size.height*0.6956522);
    path_0.cubicTo(size.width*0.04102564,size.height*0.7779814,size.width*0.06857744,size.height*0.8447205,size.width*0.1025641,size.height*0.8447205);
    path_0.close();

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.shader = ui.Gradient.linear(Offset(size.width*0.9391333,size.height*0.2857143), Offset(size.width*0.3510564,size.height*0.7295839), [Color(0xffFEBCFF).withOpacity(1),Color(0xffFC7EFF).withOpacity(1)], [0,1]);
canvas.drawPath(path_0,paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
  
}

class custompaint4 extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
            
Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.shader = ui.Gradient.linear(Offset(size.width*-14.23077,size.height*0.04448910), Offset(size.width*0.9629615,size.height*0.3334806), [Color(0xffBBFBFF).withOpacity(1),Color(0xff88F0FE).withOpacity(1)], [0,1]);
canvas.drawRRect(RRect.fromRectAndCorners(Rect.fromLTWH(size.width*0.04102564,size.height*0.1119403,size.width*0.9179487,size.height*0.7014925),bottomRight: Radius.circular(size.width*0.06153846),bottomLeft:  Radius.circular(size.width*0.06153846),topLeft:  Radius.circular(size.width*0.06153846),topRight:  Radius.circular(size.width*0.06153846)),paint_0_fill);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
  
}