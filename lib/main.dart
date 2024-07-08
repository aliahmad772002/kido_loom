import 'package:flutter/material.dart';
import 'package:kido_loom/view/home/home.dart';
import 'package:kido_loom/view/login/login.dart';
import 'package:kido_loom/view/schedule/scheduale.dart';
import 'package:kido_loom/view/splashscreen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomeScreen(),
    );
  }
}
