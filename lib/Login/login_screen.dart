import 'package:flutter/material.dart';
import 'package:practice_demo_cwic/Home/home_screen.dart';
import 'package:practice_demo_cwic/Home/home_tab.dart';
import 'package:practice_demo_cwic/Login/login_home_screen.dart';
import 'package:practice_demo_cwic/SignUp/signup_screen.dart';
import 'package:practice_demo_cwic/Utils/app_colors.dart';
import 'package:practice_demo_cwic/Utils/app_routes.dart';
import 'package:practice_demo_cwic/Widgets/custom_back_btn.dart';
import 'package:practice_demo_cwic/Widgets/custom_btn.dart';
import 'package:practice_demo_cwic/forgotpassword/forgotpassword_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool loginData = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  CustomBackButton(
                    texts: "",
                    onPress: () {
                      AppRoutes()
                          .nextScreenCloseOther(context, LoginHomeScreen());
                    },
                    applogo: true,
                  )
                  ],
                ),
                SizedBox(height: 35,),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.8,
                  height: 50,
                  child:Text("Log in 🙌",style: TextStyle(fontSize: 30,color: AppColors.primary),),
                ),

                SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.greyColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: TextFormField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 20,left: 15,bottom: 20), // add padding to adjust text
                              hintText: "Email",
                              border: InputBorder.none,
                            )),
                      ),
                      SizedBox(height: 15,),

                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.greyColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: TextFormField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 20,left: 15,bottom: 20), // add padding to adjust text
                              hintText: "Password",
                              border: InputBorder.none,
                            )),
                      ),
                      SizedBox(height: 35,),
                      SizedBox(
                        height: 55,
                        child: CustomButton(
                            height: 55,
                            buttonText: 'Login',
                            primary: AppColors.primary,
                            txtColor: AppColors.white,
                            buttonBorder: AppColors.primary,
                            onPressed: (){
                              setState(() async {
                                loginData = true;
                                SharedPreferences prefs = await SharedPreferences.getInstance();
                                prefs.setBool("logindata", loginData);
                                AppRoutes().nextScreen(context, HomeTab());
                              });
                            }),
                      ),

                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 50,
                            child:GestureDetector(
                                onTap: (){
                                  AppRoutes().nextScreen(context, ForgotPasswordScreen());
                                },
                                child: Text("Forgot Password?",style: TextStyle(fontSize: 14,color: AppColors.primary),)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 120,
                      ),
                      SizedBox(
                        height: 55,
                        child: CustomButton(
                            height: 55,
                            buttonText: 'No Account Yet?Sign Up',
                            primary: AppColors.white,
                            txtColor: AppColors.blackColor,
                            buttonBorder: AppColors.greyBorder.withOpacity(0.2),
                            onPressed: (){
                              setState(() async {
                                loginData = false;
                                SharedPreferences prefs = await SharedPreferences.getInstance();
                                prefs.setBool("logindata", loginData);
                                AppRoutes().nextScreen(context, SignUpScreen());
                              });
                            }),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}
