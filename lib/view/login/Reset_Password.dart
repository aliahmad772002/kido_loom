import 'package:flutter/material.dart';
import 'package:kido_loom/utils/color.dart';
import 'package:kido_loom/view/login/Reset_Password1.dart';
import 'package:kido_loom/view/login/widget/TextField.dart';
import 'package:kido_loom/widgets/MyButton.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
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
            decoration: const BoxDecoration(
              gradient: bgColor,
            ),
              child: Column(
                children: [
                  SizedBox(height: height*0.1),
                  
                     SizedBox(
          width: width * 0.55,
          child: const Image(image: AssetImage('assets/images/k.png')),
        ),
        SizedBox(height: height*0.1),
                  
 const Text(
                    'Reset Password',
                    style: TextStyle(color: Color.fromARGB(255, 13, 72, 121),fontSize: 20,fontWeight:FontWeight.w900),
                  ),
                  const Text(
                    'Enter Your Email',
                    style: TextStyle(color: Color.fromARGB(255, 13, 72, 121),fontSize: 10,fontWeight:FontWeight.w900),
                  ),
                  const SizedBox(height: 10,),
                  
                    
                  const myTextField(hintText: 'Enter your account email'),
                  
                  const SizedBox(height: 10,),
              
                  const SizedBox(height: 10,),
                  myButton(onTap: (){ Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const ResetPassword1()),
                        );}, btnText: 'Send link'),
                  


                ],
              ),
            
          )
        ],
      )),
    ));
  }
}