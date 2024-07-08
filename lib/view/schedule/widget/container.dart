import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kido_loom/utils/color.dart'; // Ensure color definitions are available

Widget CustomContainer(String text, String image1Path, double height,
    double width) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: height * 0.17,
      width: width * 0.25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: whiteColor,
      ),
      child: Column(
    mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Image(
             image: AssetImage(image1Path),


            width: width * 0.12
           ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: width * 0.035, color: font2),
          ),

        ],
      ),
    ),
  );
}
