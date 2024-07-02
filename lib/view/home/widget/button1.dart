import 'package:flutter/material.dart';
import 'package:kido_loom/utils/color.dart'; // Ensure color definitions are available

Widget Button(String text, String image1Path, String image2Path, double height,
    double width) {
  return Container(
    height: height * 0.06,
    width: width * 0.38,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
      color: font1,
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(image1Path, width: width * 0.05),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: width * 0.025, color: white),
          ),
          Image.asset(image2Path, width: width * 0.05),
        ],
      ),
    ),
  );
}
