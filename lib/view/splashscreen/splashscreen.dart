import 'package:flutter/material.dart';
import 'package:kido_loom/view/onboard/onboard.dart';

import '../../utils/color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                OnboardingScreen()), // Navigate to HomePage after delay
      );
    });
  }

  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            gradient: bgColor,
          ),
          child: Center(child: Image.asset('assets/images/k.png'))),
    );
  }
}
