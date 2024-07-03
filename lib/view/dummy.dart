import 'package:flutter/material.dart';
import 'package:kido_loom/utils/color.dart';
import 'package:kido_loom/view/bottombar/widget/tabitem.dart';
import 'package:kido_loom/view/home/home.dart';
import 'package:kido_loom/view/message/message.dart';
import 'package:kido_loom/view/profile/profile.dart';
import 'package:kido_loom/view/schedule/scheduale.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

final tabs = ['Home', 'Schedule', 'Message', 'Profile'];

class _BottomBarState extends State<BottomBar> {
  int selectedPosition = 0;

  // Screens corresponding to each tab
  final List<Widget> screens = [
    HomeScreen(),
    ScheduleScreen(),
    MessageScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: font1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: () {},
        child: ShaderMask(
          shaderCallback: (Rect bounds) {
            return LinearGradient(
              colors: [
                Color(0xFFCFF0FF),
                Color(0xff80C8EA),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ).createShader(bounds);
          },
          blendMode: BlendMode.srcIn,
          child: Icon(Icons.add),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _buildBottomTab(),
      body: screens[selectedPosition],
    );
  }

  Widget _buildBottomTab() {
    return BottomAppBar(
      color: whiteColor,
      shape: CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          TabItem(
            text: tabs[0],
            imagePath: 'images/home.png',
            isSelected: selectedPosition == 0,
            onTap: () {
              _navigateToScreen(0);
            },
          ),
          TabItem(
            text: tabs[1],
            imagePath: 'images/sdl.png',
            isSelected: selectedPosition == 1,
            onTap: () {
              _navigateToScreen(1);
            },
          ),
          SizedBox(
            width: 48,
          ),
          TabItem(
            text: tabs[2],
            imagePath: 'images/msg.png',
            isSelected: selectedPosition == 2,
            onTap: () {
              _navigateToScreen(2);
            },
          ),
          TabItem(
            text: tabs[3],
            imagePath: 'images/prsn.png',
            isSelected: selectedPosition == 3,
            onTap: () {
              _navigateToScreen(3);
            },
          ),
        ],
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
