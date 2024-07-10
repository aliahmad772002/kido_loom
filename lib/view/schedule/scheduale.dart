import 'package:flutter/material.dart';
import 'package:kido_loom/utils/color.dart';
import 'package:kido_loom/view/schedule/widget/container.dart';
import 'package:kido_loom/widgets/appbar.dart';


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
    return Container(
      height: height,
      width: width,
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
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: height * 0.37,
                    width: width,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/kid.png'),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      gradient: container1,
                    ),
                  ),
                  Positioned(
                    bottom: -height * 0.07, // Adjust this value as needed
                    left: width * 0.1, // Center the row
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: height * 0.11,
                          width: width * 0.4,
                          decoration: const BoxDecoration(
                            color: borderColor,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              topLeft: Radius.circular(15),
                            ),
                          ),
                        ),
                        Container(
                          height: height * 0.11,
                          width: width * 0.4,
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 0.08), // Adjust this value as needed
            // i want a gridview here
              GridView.count(
                crossAxisSpacing: 10.0,

                crossAxisCount: 3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  CustomContainer('Activities', 'assets/images/activity.png', height, width),
                  CustomContainer('Health', 'assets/images/health.png', height, width),
                  CustomContainer('Temperature', 'assets/images/temp.png', height, width),
                  CustomContainer('Fluids', 'assets/images/fluid.png', height, width),
                  CustomContainer('Food', 'assets/images/food.png', height, width),
                  CustomContainer('Naps', 'assets/images/naps.png', height, width),
                  CustomContainer('Mood', 'assets/images/temp.png', height, width),
                  CustomContainer('Supplies', 'assets/images/activity.png', height, width),
                  CustomContainer('Notes', 'assets/images/fluid.png', height, width),
                  CustomContainer('Name to face', 'assets/images/name.png', height, width),
                  CustomContainer('Move rooms', 'assets/images/room.png', height, width),

                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
