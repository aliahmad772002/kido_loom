import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kido_loom/utils/color.dart';
import 'package:kido_loom/view/Food%20Report/Food_Report.dart';
import 'package:kido_loom/view/home/widget/button1.dart';
import 'package:kido_loom/view/home/widget/custom_clipper.dart';
import 'package:kido_loom/widgets/appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double  screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        height: screenHeight,
        width: screenHeight,
        decoration: const BoxDecoration(
          gradient: bgColor,
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: const PreferredSize(
            preferredSize: Size.fromHeight(70),
            child: Appbar(),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: screenHeight * 0.37,
                    width: screenWidth,
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
                                      fontSize: screenWidth * 0.028, color: font2)),
                              Text('David Sienfeld',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: screenWidth * 0.04,
                                      color: font1)),
                              Row(
                                children: [
                                  Text('Status',
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.028,
                                          color: font2)),
                                  SizedBox(width: screenWidth * 0.02),
                                  Text('Present',
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.028,
                                          color: green)),
                                ],
                              ),
                              Text('Joined: 12/12/2023',
                                  style: TextStyle(
                                      fontSize: screenWidth * 0.028, color: font2)),
                              SizedBox(height: screenHeight * 0.03),
                              Button(
                                'Attendance',
                                'assets/images/calendar.png',
                                'assets/images/circle.png',
                                screenHeight,
                                screenWidth,
                              ),
                              SizedBox(height: screenHeight * 0.01),
                              Button(
                                'Room#: 3',
                                'assets/images/calendar.png',
                                'assets/images/circle.png',
                                screenHeight,
                                screenWidth,
                              ),
                              SizedBox(height: screenHeight * 0.01),
                              Button(
                                'Today’s schedule',
                                'assets/images/calendar.png',
                                'assets/images/circle.png',
                                screenHeight,
                                screenWidth,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: screenHeight * 0.33,
                                width: screenWidth * 0.4,
                                decoration: BoxDecoration(
                                  border: Border.all(color: white),
                                  borderRadius:
                                      BorderRadius.circular(screenHeight / 2),
                                ),
                                child: Center(
                                  child: SizedBox(
                                    height: screenHeight * 0.3,
                                    width: screenWidth * 0.35,
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(screenHeight / 2),
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
                Stack(
                  children: [
                    Container(
                      height: screenHeight * 0.22,
                      width: screenWidth * 1,
                      color: Colors.transparent,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 25, left: 10),
                            child: Container(
                              height: screenHeight * 0.15,
                              width: screenWidth * 0.3,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color(0xffB0FCF7),
                                      Color(0xffFFAFCC),

                                    ],
                                  )),
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                  
                                          children: [
                                          
                                           SizedBox(height: screenHeight*0.05,),
                                            Text(
                                              'Feed',
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.robotoSlab(fontWeight: FontWeight.w700,fontSize: 16,color: font1)
                                              
                                            ),
                                            Text(
                                              '1 hrs ago',
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.quicksand(fontWeight: FontWeight.w400,fontSize: 10,color: font1)
                                              
                                            ),
                                  
                                          ],
                                        ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25, left: 10),
                            child: Container(height: screenHeight * 0.15,
                                width: screenWidth * 0.3,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Color(0xffFFDDB4),
                                        Color(0xffA9E882),
                            
                                      ],
                                    )),
                                    child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                    
                                            children: [
                                            
                                             SizedBox(height: screenHeight*0.05,),
                                            Text(
                                              'Sleep',
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.robotoSlab(fontWeight: FontWeight.w700,fontSize: 16,color: font1)
                                              
                                            ),
                                            Text(
                                              '2 hrs ago',
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.quicksand(fontWeight: FontWeight.w400,fontSize: 10,color: font1)
                                              
                                            ),
                                    
                                            ],
                                          ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25, left: 10),
                            child: Container(height: screenHeight * 0.15,
                                width: screenWidth * 0.3,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Color(0xffB0FCF7),
                                        Color(0xffFFAFCC),
                            
                                      ],
                                    )),
                                    child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                    
                                            children: [
                                            SizedBox(height: screenHeight*0.05,),
                                              Text(
                                                'Diper',
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.robotoSlab(fontWeight: FontWeight.w700,fontSize: 16,color: font1)
                                                
                                              ),
                                              Text(
                                                '4 hrs ago',
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.quicksand(fontWeight: FontWeight.w400,fontSize: 10,color: font1)
                                                
                                              ),
                                              
                                    
                                            ],
                                          ),),
                          )
                        ],
                      ),
                    ),
                   Padding(
                     padding: const EdgeInsets.only(left: 5),
                     child: SizedBox(child: Image.asset('assets/images/feeder.png'),),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 140),
                     child: SizedBox(child: Image.asset('assets/images/sleep.png'),),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 265),
                     child: SizedBox(child: Image.asset('assets/images/diper.png'),),
                   )
                  ],
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
