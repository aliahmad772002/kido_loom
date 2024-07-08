import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kido_loom/utils/color.dart';
import 'package:kido_loom/view/home/widget/button1.dart';
import 'package:kido_loom/view/home/widget/custom_clipper.dart';
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
    return SafeArea(
      child: Container(
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
                                'assets/images/calendar.png',
                                'assets/images/circle.png',
                                height,
                                width,
                              ),
                              SizedBox(height: height * 0.01),
                              Button(
                                'Room#: 3',
                                'assets/images/calendar.png',
                                'assets/images/circle.png',
                                height,
                                width,
                              ),
                              SizedBox(height: height * 0.01),
                              Button(
                                'Today’s schedule',
                                'assets/images/calendar.png',
                                'assets/images/circle.png',
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
                                        'assets/images/child.png',
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
                      'assets/images/feed1.png',
                      width: width * 0.25,
                    ),
                    Image.asset(
                      'assets/images/sleep1.png',
                      width: width * 0.25,
                    ),
                    Image.asset(
                      'assets/images/diaper1.png',
                      width: width * 0.25,
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      height: height * 0.18,
                      width: width * 1,
                      child: CustomPaint(
                        painter: custompaint1(),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 15),
                              child: Row(
                                children: [
                                  ImageIcon(
                                    AssetImage('assets/icons/stats.png'),
                                    color: font1,
                                  ),
                                  SizedBox(
                                    width: width * 0.02,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Text(
                                      'Progress Report',
                                      style: TextStyle(
                                          color: font1,
                                          fontWeight: FontWeight.bold,
                                          fontSize: width * 0.04),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15,right: 230),
                              child: ImageIcon(
                                   AssetImage("assets/icons/carrow.png"),color: font1,),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Container(
                        height: height * 0.25,
                        width: width * 1,
                        child: CustomPaint(
                          painter: custompaint2(),child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 50),
                              child: Row(
                                children: [
                                  ImageIcon(
                                    AssetImage('assets/icons/medkit.png'),
                                    color: font1,
                                  ),
                                  SizedBox(
                                    width: width * 0.02,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 6),
                                    child: Text(
                                      'Health Report',
                                      style: TextStyle(
                                          color: font1,
                                          fontWeight: FontWeight.bold,
                                          fontSize: width * 0.04),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15,right: 230),
                              child: ImageIcon(
                                   AssetImage("assets/icons/carrow.png"),color: font1,),
                            )
                          ],
                        ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 135),
                      child: Container(
                        height: height * 0.2,
                        width: width * 1,
                        child: CustomPaint(
                          painter: custompaint3(),child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 42),
                              child: Row(
                                children: [
                                  ImageIcon(
                                    AssetImage('assets/icons/brush.png'),
                                    color: font1,
                                  ),
                                  SizedBox(
                                    width: width * 0.02,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Text(
                                      'Daily Activities',
                                      style: TextStyle(
                                          color: font1,
                                          fontWeight: FontWeight.bold,
                                          fontSize: width * 0.04),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3,right: 230),
                              child: ImageIcon(
                                   AssetImage("assets/icons/carrow.png"),color: font1,),
                            )
                          ],
                        ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 227),
                      child: Container(
                          height: height * 0.18,
                          width: width * 1,
                          child: CustomPaint(
                            painter: custompaint4(),child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 15),
                              child: Row(
                                children: [
                                  ImageIcon(
                                    AssetImage('assets/icons/beer.png'),
                                    color: font1,
                                  ),
                                  SizedBox(
                                    width: width * 0.02,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Text(
                                      'Food',
                                      style: TextStyle(
                                          color: font1,
                                          fontWeight: FontWeight.bold,
                                          fontSize: width * 0.04),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15,right: 230),
                              child: ImageIcon(
                                   AssetImage("assets/icons/carrow.png"),color: font1,),
                            )
                          ],
                        ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 145),
                      child: SizedBox(
                          height: height * 0.5,
                          child: Image.asset('assets/images/Frame.png')),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

