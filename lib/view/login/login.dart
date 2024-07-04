import 'package:flutter/material.dart';
import 'package:kido_loom/utils/color.dart';
import 'package:kido_loom/view/bottombar/bottombar.dart';
import 'package:kido_loom/view/login/Reset_Password.dart';
import 'package:kido_loom/view/login/widget/TextField.dart';
import 'package:kido_loom/widgets/MyButton.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
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
          child: Image(image: AssetImage('images/k.png')),
        ),
        SizedBox(height: height*0.1),
                  
 const Text(
                    'Parents Login',
                    style: TextStyle(color: Color.fromARGB(255, 13, 72, 121),fontSize: 20,fontWeight:FontWeight.w900),
                  ),
                  const Text(
                    'Enter Your Details',
                    style: TextStyle(color: Color.fromARGB(255, 13, 72, 121),fontSize: 10,fontWeight:FontWeight.w900),
                  ),
                  SizedBox(height: 10,),
                  
                    
                  myTextField(hintText: 'Email'),
                  
                  SizedBox(height: 10,),
                  myTextField(hintText: 'password'),
                  SizedBox(height: 10,),
                  myButton(onTap: (){ Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BottomBar()),
                        );}, btnText: 'Login'),
                  SizedBox(height: 10,),
                  GestureDetector(onTap:(){ Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ResetPassword()),
                        );
                        },child:  Text('Forgot Password?',style: TextStyle(color: Colors.black),))


                ],
              ),
            
          )
        ],
      )),
    ));
  }
}