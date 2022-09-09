import 'package:flutter/material.dart';
import 'package:practice_demo_cwic/Utils/app_colors.dart';
import 'package:practice_demo_cwic/Utils/app_imges.dart';
import 'package:practice_demo_cwic/Utils/app_routes.dart';
import 'package:practice_demo_cwic/Widgets/cutome_btn.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Container(
                        color: AppColors.greyColor.withOpacity(0.2),
                        width: 44,
                        height: 44,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset(AppImages.backArrow,),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.17,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2.8,
                      height: 35,
                      child: Image.asset(AppImages.logo,color: AppColors.primary,),
                    ),
                  ],
                ),

                SizedBox(height: 35,),

                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.8,
                  height: 50,
                  child:Text("Log in 🙌",style: TextStyle(fontSize: 30,color: AppColors.primary),),
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
                  child: CustomeButton(
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

                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 50,
                      child:Text("Forgot Password?",style: TextStyle(fontSize: 14,color: AppColors.primary),),
                    ),
                  ],
                ),
                SizedBox(
                  height: 120,
                ),
                SizedBox(
                  height: 55,
                  child: CustomeButton(
                      height: 55,
                      buttonText: 'No Account Yet?Sign Up',
                      primary: AppColors.white,
                      txtColor: AppColors.blackColor,
                      buttonBorder: AppColors.greyBorder.withOpacity(0.2),
                      onPressed: (){
                        setState(() {
                          // AppRoutes().nextScreen(context, LoginScreen());
                        });
                      }),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}
