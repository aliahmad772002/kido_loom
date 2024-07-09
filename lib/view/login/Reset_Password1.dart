import 'package:flutter/material.dart';
import 'package:kido_loom/utils/color.dart';
import 'package:kido_loom/view/login/widget/TextField.dart';
import 'package:kido_loom/widgets/MyButton.dart';

class ResetPassword1 extends StatefulWidget {
  const ResetPassword1({super.key});

  @override
  State<ResetPassword1> createState() => _ResetPassword1State();
}

class _ResetPassword1State extends State<ResetPassword1> {
  @override
  Widget build(BuildContext context) {
        var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
      child: Center(
          child: Column(
        children: [
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              gradient: bgColor,
            ),
              child: Column(
                children: [
                  SizedBox(height: height*0.1),
                  
                     SizedBox(
          width: width * 0.55,
          child: Image(image: AssetImage('assets/images/k.png')),
        ),
        SizedBox(height: height*0.1),
                  
 const Text(
                    'Reset Password',
                    style: TextStyle(color: Color.fromARGB(255, 13, 72, 121),fontSize: 20,fontWeight:FontWeight.w900),
                  ),
                  const Text(
                    'Enter new password',
                    style: TextStyle(color: Color.fromARGB(255, 13, 72, 121),fontSize: 10,fontWeight:FontWeight.w900),
                  ),
                  SizedBox(height: 10,),
                  
                    
                  myTextField(hintText: 'New Password'),
                  
                  SizedBox(height: 10,),
                  myTextField(hintText: 'Retype Password'),
                  SizedBox(height: 10,),
                  myButton(onTap: (){}, btnText: 'Change password'),
                  SizedBox(height: 10,),
                  


                ],
              ),
            
          )
        ],
      )),
    ));
  }
}