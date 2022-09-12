import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_demo_cwic/SignUp/signup_screen.dart';
import 'package:practice_demo_cwic/Utils/app_colors.dart';
import 'package:practice_demo_cwic/Utils/app_routes.dart';
import 'package:practice_demo_cwic/Utils/app_string.dart';
import 'package:practice_demo_cwic/Widgets/custom_back_btn.dart';
import 'package:practice_demo_cwic/Widgets/custom_btn.dart';

class ExplorerScreen extends StatefulWidget {
  const ExplorerScreen({Key? key}) : super(key: key);

  @override
  _ExplorerScreenState createState() => _ExplorerScreenState();
}

class _ExplorerScreenState extends State<ExplorerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Stack(
          children: [
           SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
             CustomBackButton(
               texts: "CWIC Preview ⭐️",
               onPress: () {
                 AppRoutes.pop(context);
               },
             ),

                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 20, right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Why use CWIC?', style: TextStyle(fontSize: 22,color: AppColors.primary),),
                      SizedBox(height: 10,),
                      Text(AppString.whyUseCWIC, textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 13)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Benefits of signing up', style: TextStyle(fontSize: 22,color: AppColors.primary) ),
                      const SizedBox(height: 10,),
                      Text(AppString.benefitsSigningUp, style: TextStyle(fontSize: 13)),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('CWIC community', style: TextStyle(fontSize: 22,color: AppColors.primary) ),
                      const SizedBox(height: 10,),
                      Text(AppString.cwickCommunity, style: TextStyle(fontSize: 13)),
                    ],
                  ),
                ),

                SizedBox(height:15,)
              ],
            ),
          ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 15),
                child: CustomButton(
                  buttonText: 'Sign up now',
                  height: 55,
                  txtColor: Colors.white,
                  buttonBorder:AppColors.primary,
                  primary: AppColors.primary,
                  onPressed: () {
                    AppRoutes().nextScreen(context, const SignUpScreen());
                  },),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
