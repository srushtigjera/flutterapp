
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_demo_cwic/Dailog/custom_dialog.dart';
import 'package:practice_demo_cwic/Login/login_screen.dart';
import 'package:practice_demo_cwic/Utils/app_colors.dart';
import 'package:practice_demo_cwic/Utils/app_routes.dart';
import 'package:practice_demo_cwic/Widgets/custom_back_btn.dart';
import 'package:practice_demo_cwic/Widgets/custom_btn.dart';
import 'package:practice_demo_cwic/Widgets/heading_text.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {

  Dio dio = Dio();
  var emailId =TextEditingController();
  var formKey = GlobalKey<FormState>();

  void forgotPassword() async {
    SharedPreferences pref = await SharedPreferences.getInstance() ;
    var token = pref.getString('token');
    var param = {
      "email" : emailId.text
    };

    var url = 'http://3.142.18.201/cwic/api/user/forgot/password';
    var forgotPasswordData = await dio.post(url , data: param ,options: Options(headers: {
      'Authorization': 'Bearer $token',
    }));

    var forgotPasswordResponse = forgotPasswordData.data;
    var forgotPasswordSuccess = forgotPasswordResponse["status"].toString();

    var forgotPasswordMsg = forgotPasswordResponse["message"];

    if(forgotPasswordSuccess == "Success"){
      CustomDialog().show(context,"Forgot Password",'An email has been sent to ${emailId.text}');

     // AppRoutes().nextAndRemoveUtils(context, LoginScreen());
    }else if(forgotPasswordSuccess == "Error"){
      if(forgotPasswordMsg == "Invalid email! Please enter your registered email."){
        setState(() {
          CustomDialog()
              .show(context, "Error", "Invalid email! Please enter your registered email.");
        });
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: formKey,
          child: Column(
            children: [
             CustomBackButton(
               onPress: (){
                 AppRoutes.pop(context);
               },
               texts: '',
               applogo: true,
             ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0,left: 20),
                child: Column(
                  children: [
                    HeadingText(title: "Forgot password 🤔"),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.greyColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: TextFormField(
                        controller: emailId,
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
                    SizedBox(height: 35,),
                    SizedBox(
                      height: 55,
                      child: CustomButton(
                          height: 55,
                          buttonText: 'Send me a password reset link',
                          primary: AppColors.primary,
                          txtColor: AppColors.white,
                          buttonBorder: AppColors.primary,
                          onPressed: (){
                            final isValid = formKey.currentState?.validate();
                            if (isValid!) {
                              setState(() {
                                forgotPassword();
                              });
                            }
                            formKey.currentState?.save();
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
