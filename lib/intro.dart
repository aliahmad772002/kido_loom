import 'package:flutter/material.dart';
import 'package:kido_loom/color.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
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
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: height * 0.1, bottom: 25),
              child: Container(
                height: height * 0.43,
                width: width,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: borderColor, width: 2.0),
                ),
                child: Center(
                    child: Container(
                  height: height * 0.35,
                  width: width,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    shape: BoxShape.circle,
                    border: Border.all(color: borderColor, width: 2.0),
                  ),
                  child: Center(
                    child: SizedBox(
                        width: width * 0.65,
                        child: Image(image: AssetImage('images/people.png'))),
                  ),
                )),
              ),
            ),
            SizedBox(
                width: width * 0.5,
                child: Image(image: AssetImage('images/k.png'))),
            Text(
              'Parent Involvement:',
              style: TextStyle(fontSize: width * 0.045, color: txt1),
            ),
            Text(
              'Also as it says opportunities for parents to',
              style: TextStyle(fontSize: width * 0.03, color: txt2),
            ),
            Text(
              'be engaged',
              style: TextStyle(fontSize: width * 0.03, color: txt2),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: height * 0.05,
                  width: width * 0.05,
                  decoration: BoxDecoration(
                    color: circleColor,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Container(
                  height: height * 0.05,
                  width: width * 0.05,
                  decoration: BoxDecoration(
                    color: circleColor,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Container(
                  height: height * 0.05,
                  width: width * 0.05,
                  decoration: BoxDecoration(
                    color: txt1,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              height: height * 0.07,
              width: width * 0.9,
              decoration: BoxDecoration(
                color: txt1,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Center(
                child: Text('Let’s get started',
                    style:
                        TextStyle(fontSize: width * 0.03, color: whiteColor)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
