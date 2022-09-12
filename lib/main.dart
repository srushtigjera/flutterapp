import 'package:flutter/material.dart';
import 'package:practice_demo_cwic/Login/login_home_screen.dart';
import 'package:practice_demo_cwic/Login/login_screen.dart';
import 'package:practice_demo_cwic/Widgets/custom_back_btn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginHomeScreen(),
    );
  }
}
