import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_demo_cwic/Utils/app_colors.dart';
import 'package:practice_demo_cwic/Utils/app_imges.dart';
import 'package:practice_demo_cwic/Utils/app_string.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.primary,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width / 9,
                width: MediaQuery.of(context).size.width  /9,
                child: Image.asset(AppImages.splashpin),
              ),
              SizedBox(height: 15.0,),
              SizedBox(
                child: Column(
                  children: [
                    Image.asset(AppImages.logo,width: 200,height: 50,),
                    Text(AppString.strKwik , style: TextStyle(color: AppColors.white, fontSize: 18),),
                    SizedBox(height: 11,),
                    Text(AppString.strLivingLiveAlive , style: TextStyle(color: AppColors.lightGreen, fontSize: 18),)
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
