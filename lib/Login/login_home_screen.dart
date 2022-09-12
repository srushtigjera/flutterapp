import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_demo_cwic/Explorer/explorer_screen.dart';
import 'package:practice_demo_cwic/Login/login_screen.dart';
import 'package:practice_demo_cwic/SignUp/signup_screen.dart';
import 'package:practice_demo_cwic/Utils/app_colors.dart';
import 'package:practice_demo_cwic/Utils/app_imges.dart';
import 'package:practice_demo_cwic/Utils/app_routes.dart';
import 'package:practice_demo_cwic/Widgets/custom_btn.dart';

class LoginHomeScreen extends StatefulWidget {
  const LoginHomeScreen({Key? key}) : super(key: key);

  @override
  _LoginHomeScreenState createState() => _LoginHomeScreenState();
}

class _LoginHomeScreenState extends State<LoginHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50,),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2.8,
                height: 50,
                child: Image.asset(AppImages.logo,color: AppColors.primary,),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.43,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          AppImages.login),
                      fit: BoxFit.fill,
                    ),
                    borderRadius:
                    BorderRadius.circular(20.0),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: Image.asset(
                    AppImages.letsGetStarteds,
                  )),

              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SizedBox(
                  height: 55,
                  child: CustomButton(
                      height: 55,
                      buttonText: 'Login',
                      primary: AppColors.primary,
                      txtColor: AppColors.white,
                      buttonBorder: AppColors.primary,
                      onPressed: (){
                        setState(() {
                          AppRoutes().nextScreen(context, LoginScreen());
                        });
                      }),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SizedBox(
                  height: 55,
                  child: CustomButton(
                      height: 55,
                      buttonText: 'Sign Up',
                      primary: AppColors.white,
                      txtColor: AppColors.blackColor,
                      buttonBorder: AppColors.greyBorder.withOpacity(0.2),
                      onPressed: (){
                        setState(() {
                          AppRoutes().nextScreen(context, SignUpScreen());
                        });
                      }),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SizedBox(
                  height: 55,
                  child: CustomButton(
                      height: 55,
                      buttonText: 'Explore',
                      primary: AppColors.greyColor.withOpacity(0.2),
                      txtColor: AppColors.blackColor,
                      buttonBorder: AppColors.greyColor,
                      onPressed: (){
                        setState(() {
                           AppRoutes().nextScreen(context, ExplorerScreen());
                        });
                      }),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
