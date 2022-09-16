import 'package:flutter/material.dart';
import 'package:practice_demo_cwic/Utils/app_colors.dart';
import 'package:practice_demo_cwic/Utils/app_routes.dart';
import 'package:practice_demo_cwic/Widgets/custom_back_btn.dart';
import 'package:practice_demo_cwic/Widgets/custom_btn.dart';
import 'package:practice_demo_cwic/Widgets/heading_text.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomBackButton(
                    onPress: (){
                        AppRoutes.pop(context);
                    },
                    texts: '',
                    applogo: true,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HeadingText(
                    title: 'Change Password 🙌',
                  ),
                ],
              ),
              SizedBox(height: 5,),
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
                            hintText: "Old Password",
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
                            hintText: "New Password",
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
                            hintText: "Confirm Password",
                            border: InputBorder.none,
                          )),
                    ),
                    SizedBox(height: 35,),
                    SizedBox(
                      height: 55,
                      child: CustomButton(
                          height: 55,
                          buttonText: 'Change Password',
                          primary: AppColors.primary,
                          txtColor: AppColors.white,
                          buttonBorder: AppColors.primary,
                          onPressed: (){
                            setState(() {
                              //AppRoutes().nextScreen(context, LoginScreen());
                            });
                          }),
                    ),

                    /*SizedBox(
                      height: 10,
                    ),*/
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
