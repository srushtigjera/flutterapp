import 'package:flutter/material.dart';
import 'package:practice_demo_cwic/Detail/detail_screen.dart';
import 'package:practice_demo_cwic/FilterScreen/filter_screen.dart';
import 'package:practice_demo_cwic/Home/home_screen.dart';
import 'package:practice_demo_cwic/Home/home_tab.dart';
import 'package:practice_demo_cwic/Login/login_home_screen.dart';
import 'package:practice_demo_cwic/Login/login_screen.dart';
import 'package:practice_demo_cwic/Profile/profile_screen.dart';
import 'package:practice_demo_cwic/SignUp/additional_info_screen.dart';
import 'package:practice_demo_cwic/Utils/app_colors.dart';
import 'package:practice_demo_cwic/Widgets/custom_back_btn.dart';
import 'package:practice_demo_cwic/forgotpassword/forgotpassword_screen.dart';

import 'Profile/estate_profile.dart';
import 'Widgets/heading_text.dart';

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
        primarySwatch: Colors.lightGreen,
      ),
      home: FilterScreen(),
    );
  }
}
