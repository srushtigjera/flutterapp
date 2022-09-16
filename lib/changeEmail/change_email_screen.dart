import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_demo_cwic/Utils/app_colors.dart';
import 'package:practice_demo_cwic/Utils/app_routes.dart';
import 'package:practice_demo_cwic/Widgets/custom_back_btn.dart';
import 'package:practice_demo_cwic/Widgets/custom_btn.dart';
import 'package:practice_demo_cwic/Widgets/heading_text.dart';

class ChangeEmailScreen extends StatefulWidget {
  const ChangeEmailScreen({Key? key}) : super(key: key);

  @override
  _ChangeEmailScreenState createState() => _ChangeEmailScreenState();
}

class _ChangeEmailScreenState extends State<ChangeEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  CustomBackButton(
                    onPress: (){
                      AppRoutes.pop(context);
                    },
                    texts: '',
                    applogo: true,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HeadingText(title: 'Change Email 🙌'),
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
                            hintText: "srushti@gmail.com",
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
                            hintText: "New Email",
                            border: InputBorder.none,
                          )),
                    ),
                    SizedBox(height: 35,),
                    SizedBox(
                      height: 55,
                      child: CustomButton(
                          height: 55,
                          buttonText: 'Change Email',
                          primary: AppColors.primary,
                          txtColor: AppColors.white,
                          buttonBorder: AppColors.primary,
                          onPressed: (){
                            setState(() {
                              //AppRoutes().nextScreen(context, LoginScreen());
                            });
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
