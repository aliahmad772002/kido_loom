import 'package:flutter/material.dart';
import 'package:kido_loom/utils/color.dart';

class myButton extends StatelessWidget {
  final Function()? onTap;
  final String btnText;
  const myButton({super.key, required this.onTap, required this.btnText});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return GestureDetector(
                    onTap: onTap,
                    child: Container(
                      height: height*0.07,
                    padding: const EdgeInsets.symmetric(horizontal:10),
                    margin: EdgeInsets.symmetric(horizontal: 10),
                      
                      decoration: BoxDecoration(color: font1,borderRadius: BorderRadius.circular(10)),
                      
                      child: Center(child: Text(btnText,style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold))),
                    ),
                  );
  }
}