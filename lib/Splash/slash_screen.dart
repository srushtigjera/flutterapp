import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_demo_cwic/Home/home_screen.dart';
import 'package:practice_demo_cwic/Login/login_home_screen.dart';
import 'package:practice_demo_cwic/Utils/app_colors.dart';
import 'package:practice_demo_cwic/Utils/app_imges.dart';
import 'package:practice_demo_cwic/Utils/app_routes.dart';
import 'package:practice_demo_cwic/Utils/app_string.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  bool? value;

  getAllSavedData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? value = prefs.getBool("logindata");

    /* if(value == true){
      setState(() {
        AppRoutes().nextScreen(context, LoginHomeScreen());
      });
    }
    else{
      setState(() {
        AppRoutes().nextScreen(context, HomeScreen());
      });
    }*/
  }
  @override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 3),
            () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => value == true ? HomeScreen():LoginHomeScreen()),
        ));
  }

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
