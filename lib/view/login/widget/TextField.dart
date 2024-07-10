import 'package:flutter/material.dart';

class myTextField extends StatelessWidget {
  final String hintText;
  const myTextField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
                    height: height*0.07,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:10 ),
                      child: TextField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.emailAddress,
                        autofocus: true,
                        decoration: InputDecoration(
                          
                            filled: true,
                            fillColor: Colors.white,
                            hintText: hintText,
                            hintStyle: const TextStyle(color: Colors.grey,),
                            contentPadding: const EdgeInsets.symmetric(vertical: 0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            )),
                      ),
                    ),
                  );
  }
}