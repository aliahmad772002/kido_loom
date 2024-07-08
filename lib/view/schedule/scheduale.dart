import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kido_loom/utils/color.dart';
import 'package:kido_loom/widgets/appbar.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';


class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: Appbar(),
        ),
        body:SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                
                  Container(
                      height: height * 0.37,
                      width: width,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                            image: AssetImage('images/kid.png'),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(20),
                        gradient: container1,
                      )),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 410, left: 20)),
                      Container(
                        height: height * 0.11,
                        width: width * 0.4,
                        decoration: BoxDecoration(
                          gradient: bgColor,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                topLeft: Radius.circular(15)),
                            ),
                      ),
                      Container(
                        height: height * 0.11,
                        width: width * 0.4,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(15),
                                topRight: Radius.circular(15))),
                      ),
                    ],
                  ),
                  
                ]
                ),
                
              Container(height: height*0.1,width: width*0.2,color: Colors.green,)
            ],
          ),
        ));
  }
}
