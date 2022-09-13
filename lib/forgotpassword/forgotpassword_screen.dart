
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_demo_cwic/Utils/app_colors.dart';
import 'package:practice_demo_cwic/Utils/app_routes.dart';
import 'package:practice_demo_cwic/Widgets/custom_back_btn.dart';
import 'package:practice_demo_cwic/Widgets/custom_btn.dart';
import 'package:practice_demo_cwic/Widgets/heading_text.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 20,left: 15,bottom: 20), // add padding to adjust text
                          hintText: "Email",
                          border: InputBorder.none,
                        )),
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
                          setState(() {
                          //  AppRoutes().nextScreen(context, LoginScreen());
                          });
                        }),
                  ),

                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
