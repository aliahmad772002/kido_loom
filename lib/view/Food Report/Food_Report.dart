import 'package:flutter/material.dart';
import 'package:kido_loom/utils/color.dart';
import 'package:kido_loom/view/Food%20Report/custom_painter.dart';
import 'package:kido_loom/widgets/appbar.dart';

class foodReport extends StatefulWidget {
  const foodReport({super.key});

  @override
  State<foodReport> createState() => _foodReportState();
}

class _foodReportState extends State<foodReport> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(gradient: bgColor),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: Appbar(),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                Container(
                  height: height*0.31,
                  width: width,
                  child: CustomPaint(
                    
                    painter: fcustompaint1(),
                    child: Column(children: [Padding(
                  padding: const EdgeInsets.only(right: 150,top: 30),
                  child: Text('Food Report',style: TextStyle(fontSize: width*0.04,fontWeight: FontWeight.w800,color: font1),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 110,top: 10),
                  child: Text('Select Specific date or range',style: TextStyle(fontSize: 8),),
                ),
                
                ],),
                    
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 110),
                  child: Container(
                    child: CustomPaint(
                      size: Size(width, (width * 0.441025641025641).toDouble()),
                      painter: fcustompaint2(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 212),
                  child: Container(
                    child: CustomPaint(
                      size:
                          Size(width, (width * 0.41794871794871796).toDouble()),
                      painter: fcustompaint3(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 270),
                  child: Container(
                    child: CustomPaint(
                      size:
                          Size(width, (width * 0.41794871794871796).toDouble()),
                      painter: fcustompaint4(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 368),
                  child: Container(
                    child: CustomPaint(
                      size:
                          Size(width, (width * 0.2743589743589744).toDouble()),
                      painter: fcustompaint5(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 200),
                  child: SizedBox(
                      height: height * 0.3,
                      child: Image.asset('images/Frame1.png')),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 250, top: 50),
                  child: Image.asset('images/baloon1.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: Image.asset('images/baloon.png'),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
