import 'package:flutter/material.dart';
import 'package:kido_loom/utils/color.dart';
import 'package:kido_loom/view/bottombar/widget/tabitem.dart';
import 'package:kido_loom/view/home/home.dart';
import 'package:kido_loom/view/message/message.dart';
import 'package:kido_loom/view/profile/profile.dart';
import 'package:kido_loom/view/schedule/scheduale.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  _BottomBarState createState() => _BottomBarState();
}

final tabs = ['Home', 'Schedule', 'Message', 'Profile'];

class _BottomBarState extends State<BottomBar> {
  int selectedPosition = 0;

  // Screens corresponding to each tab
  final List<Widget> screens = [
    const HomeScreen(),
    const ScheduleScreen(),
    const MessageScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedPosition], // Display selected screen here
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          gradient: bgColor,
        ),
        width: MediaQuery.of(context).size.width,
        height: 80,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            CustomPaint(
              size: Size(MediaQuery.of(context).size.width, 80),
              painter: BNBCustomPainter(),
            ),
            Center(
              heightFactor: 0.1,
              child: FloatingActionButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                backgroundColor: font1,
                elevation: 0.1,
                onPressed: () {
                  // Add your onPressed functionality here
                },
                child: ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return const LinearGradient(
                      colors: [
                        Color(0xFFCFF0FF),
                        Color(0xff80C8EA),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ).createShader(bounds);
                  },
                  blendMode: BlendMode.srcIn,
                  child: const Icon(Icons.add),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TabItem(
                    text: tabs[0],
                    imagePath: 'assets/images/home.png',
                    isSelected: selectedPosition == 0,
                    onTap: () {
                      _navigateToScreen(0);
                    },
                  ),
                  TabItem(
                    text: tabs[1],
                    imagePath: 'assets/images/sdl.png',
                    isSelected: selectedPosition == 1,
                    onTap: () {
                      _navigateToScreen(1);
                    },
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.20,
                  ),
                  TabItem(
                    text: tabs[2],
                    imagePath: 'assets/images/msg.png',
                    isSelected: selectedPosition == 2,
                    onTap: () {
                      _navigateToScreen(2);
                    },
                  ),
                  TabItem(
                    text: tabs[3],
                    imagePath: 'assets/images/prsn.png',
                    isSelected: selectedPosition == 3,
                    onTap: () {
                      _navigateToScreen(3);
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  // Method to navigate to the selected screen
  void _navigateToScreen(int index) {
    setState(() {
      selectedPosition = index;
    });
  }
}

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = whiteColor
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 0); // Start point
    path.lineTo(size.width * 0.30, 0); // Left flat surface

    // Adjust the control points of the quadratic Bézier curves and arc radius for smoother points
    path.quadraticBezierTo(
        size.width * 0.35, -5, size.width * 0.38, -2); // Left middle curve
    path.arcToPoint(
      Offset(size.width * 0.62, -2),
      radius: const Radius.circular(10), // Adjust radius for smoothness
      clockwise: false,
    );
    path.quadraticBezierTo(
        size.width * 0.65, -2, size.width * 0.70, 0); // Right middle curve

    path.lineTo(size.width, 0); // Right flat surface
    path.lineTo(size.width, size.height); // Right side
    path.lineTo(0, size.height); // Bottom
    path.close(); // Close the path

    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
