import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_demo_cwic/Login/login_home_screen.dart';
import 'package:practice_demo_cwic/SignUp/additional_info_screen.dart';
import 'package:practice_demo_cwic/Utils/app_colors.dart';
import 'package:practice_demo_cwic/Utils/app_imges.dart';
import 'package:practice_demo_cwic/Utils/app_routes.dart';
import 'package:practice_demo_cwic/Widgets/custom_back_btn.dart';
import 'package:practice_demo_cwic/Widgets/custom_btn.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool signUpScreen = false;
  var formKey = GlobalKey<FormState>();
  var password = TextEditingController();

  void submit() {
    final isValid = formKey.currentState?.validate();
    if (isValid!) {
      setState(() async {
        signUpScreen = false;
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setBool("logindata", signUpScreen);
        AppRoutes().nextScreen(context, AdditionalInfoScreen());
      });
    }
    formKey.currentState?.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                CustomBackButton(
                  onPress: (){
                    AppRoutes().nextScreenCloseOther(context, LoginHomeScreen());
                  },
                  texts: '',
                  applogo: true,
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: [
                      Text('Create your account 🙌',style: TextStyle(fontSize: 30,color: AppColors.primary),),
                     SizedBox(height: 20,),
                      Stack(
                        children: [
                          SizedBox(
                            width: 90,
                            height: 90,
                            child: Image.asset(AppImages.profilepic)),
                          Positioned(
                              bottom: 1,
                              right: 1,
                              child: Container(
                                height: 32,
                                width: 32,
                                  child: Icon(Icons.add_a_photo ,color: Colors.white,
                                      size: 20),
                                decoration: const BoxDecoration(
                                    color: AppColors.primary,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20))),
                              ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.greyColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: TextFormField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 20,left: 15,bottom: 20), // add padding to adjust text
                              hintText: "Full Name",
                              border: InputBorder.none,
                                errorStyle: TextStyle(color: AppColors.primary,fontSize: 16.0)
                            ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter a full name!';
                            }
                            return null;
                          },
                        ),
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
                              hintText: "Email",
                              border: InputBorder.none,
                                errorStyle: TextStyle(color: AppColors.primary,fontSize: 16.0)
                            ),
                          validator: (value) {
                            if (value!.isEmpty ||
                                !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(value!)) {
                              return 'Enter a valid email!';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: 15,),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.greyColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: TextFormField(
                          controller: password,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 20,left: 15,bottom: 20), // add padding to adjust text
                              hintText: "Password",
                              border: InputBorder.none,
                                errorStyle: TextStyle(color: AppColors.primary,fontSize: 16.0)
                            ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter a valid password!';
                            }
                            return null;
                          },
                        ),
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
                              hintText: "Confirm Password",
                              border: InputBorder.none,
                                errorStyle: TextStyle(color: AppColors.primary,fontSize: 16.0)
                            ),
                          validator: (value) {
                            if(value!.isEmpty)
                              return 'Enter a valid password!';
                            if(value != password.text)
                              return 'Not match password';
                            return null;
                          },
                        ),
                      ),

                      SizedBox(height: 15,),
                      SizedBox(
                        height: 55,
                        child: CustomButton(
                            height: 55,
                            buttonText: 'Sign Up',
                            primary: AppColors.primary,
                            txtColor: AppColors.white,
                            buttonBorder: AppColors.primary,
                            onPressed: (){
                              submit();
                              /*setState(() async {
                                signUpScreen = false;
                                SharedPreferences prefs = await SharedPreferences.getInstance();
                                prefs.setBool("logindata", signUpScreen);
                                AppRoutes().nextScreen(context, AdditionalInfoScreen());
                              });*/
                            }),
                      ),
                      SizedBox(height: 15,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15.0,left: 25,bottom: 15),
                          child: Row(
                            children: [
                              Image.asset(AppImages.facebook,height: 25,width: 25,color: AppColors.white,),
                              SizedBox(width: 20,),
                              Text('Continue with Facebook',style: TextStyle(fontSize: 18,color: AppColors.white),),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.blue,
                          borderRadius: BorderRadius.circular(14),
                      ),
                      ),
                      SizedBox(height: 15,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15.0,left: 25,bottom: 15),
                          child: Row(
                            children: [
                              Image.asset(AppImages.google,height: 25,width: 25,),
                              SizedBox(width: 25,),
                              Text('Continue with Google',style: TextStyle(fontSize: 18,),),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.greyColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15.0,left: 25,bottom: 15),
                          child: Row(
                            children: [
                              Image.asset(AppImages.apple,height: 25,width: 25,),
                              SizedBox(width: 25,),
                              Text('Continue with Apple',style: TextStyle(fontSize: 18,),),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.greyColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
