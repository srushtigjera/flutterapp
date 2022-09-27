import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_demo_cwic/Detail/detail_screen.dart';
import 'package:practice_demo_cwic/SignUp/signup_screen.dart';
import 'package:practice_demo_cwic/Utils/app_colors.dart';
import 'package:practice_demo_cwic/Utils/app_imges.dart';
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
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    child: GridView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 6,
                          crossAxisSpacing: 10,
                          childAspectRatio: MediaQuery.of(context).size.width / (MediaQuery.of(context).size.height * 1.05 )
                      ),
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                child: Container(
                                  height: 162,
                                  width: 200,
                                  decoration:BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image:AssetImage(AppImages.homes)
                                      ),
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                ),
                                onTap: (){
                                  AppRoutes().nextScreen(context, DetailScreen());
                                },
                              ),
                              SizedBox(height: 3,),
                              Text('studio',style: TextStyle(color: AppColors.greyBorder),),
                              SizedBox(height: 3,),
                              Text('Examle I - Platinum Studio',style:TextStyle(fontSize: 16,),),
                              SizedBox(height: 3,),
                              Text('Southampton',style:TextStyle(fontSize: 14,),),
                              SizedBox(height: 3,),
                              Text('Solent University',style:TextStyle(fontSize: 10,color: AppColors.greyColor),),
                              SizedBox(height: 3,),
                              Text('University of Soluthampton',style:TextStyle(fontSize: 10,color: AppColors.greyBorder),),
                              SizedBox(height: 3,),
                              Text('154.0',style:TextStyle(fontSize: 18,),),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                child: Container(
                                  height: 162,
                                  width: 200,
                                  decoration:BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image:AssetImage(AppImages.homes)
                                      ),
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                ),
                                onTap: (){
                                  AppRoutes().nextScreen(context, DetailScreen());
                                },
                              ),
                              SizedBox(height: 3,),
                              Text('studio',style: TextStyle(color: AppColors.greyBorder),),
                              SizedBox(height: 3,),
                              Text('Examle I - Platinum Studio',style:TextStyle(fontSize: 16,),),
                              SizedBox(height: 3,),
                              Text('Southampton',style:TextStyle(fontSize: 14,),),
                              SizedBox(height: 3,),
                              Text('Solent University',style:TextStyle(fontSize: 10,color: AppColors.greyColor),),
                              SizedBox(height: 3,),
                              Text('University of Soluthampton',style:TextStyle(fontSize: 10,color: AppColors.greyBorder),),
                              SizedBox(height: 3,),
                              Text('154.0',style:TextStyle(fontSize: 18,),),
                            ],
                          ),
                        ),Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(

                                child: Container(
                                  height: 162,
                                  width: 200,
                                  decoration:BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image:AssetImage(AppImages.homes)
                                      ),
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                ),
                                onTap: (){
                                  AppRoutes().nextScreen(context, DetailScreen());
                                },
                              ),
                              SizedBox(height: 3,),
                              Text('studio',style: TextStyle(color: AppColors.greyBorder),),
                              SizedBox(height: 3,),
                              Text('Examle I - Platinum Studio',style:TextStyle(fontSize: 16,),),
                              SizedBox(height: 3,),
                              Text('Southampton',style:TextStyle(fontSize: 14,),),
                              SizedBox(height: 3,),
                              Text('Solent University',style:TextStyle(fontSize: 10,color: AppColors.greyColor),),
                              SizedBox(height: 3,),
                              Text('University of Soluthampton',style:TextStyle(fontSize: 10,color: AppColors.greyBorder),),
                              SizedBox(height: 3,),
                              Text('154.0',style:TextStyle(fontSize: 18,),),
                            ],
                          ),
                        ),Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(

                                child: Container(
                                  height: 162,
                                  width: 200,
                                  decoration:BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image:AssetImage(AppImages.homes)
                                      ),
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                ),
                                onTap: (){
                                  AppRoutes().nextScreen(context, DetailScreen());
                                },
                              ),
                              SizedBox(height: 3,),
                              Text('studio',style: TextStyle(color: AppColors.greyBorder),),
                              SizedBox(height: 3,),
                              Text('Examle I - Platinum Studio',style:TextStyle(fontSize: 16,),),
                              SizedBox(height: 3,),
                              Text('Southampton',style:TextStyle(fontSize: 14,),),
                              SizedBox(height: 3,),
                              Text('Solent University',style:TextStyle(fontSize: 10,color: AppColors.greyColor),),
                              SizedBox(height: 3,),
                              Text('University of Soluthampton',style:TextStyle(fontSize: 10,color: AppColors.greyBorder),),
                              SizedBox(height: 3,),
                              Text('154.0',style:TextStyle(fontSize: 18,),),
                            ],
                          ),
                        ),Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(

                                child: Container(
                                  height: 162,
                                  width: 200,
                                  decoration:BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image:AssetImage(AppImages.homes)
                                      ),
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                ),
                                onTap: (){
                                  AppRoutes().nextScreen(context, DetailScreen());
                                },
                              ),
                              SizedBox(height: 3,),
                              Text('studio',style: TextStyle(color: AppColors.greyBorder),),
                              SizedBox(height: 3,),
                              Text('Examle I - Platinum Studio',style:TextStyle(fontSize: 16,),),
                              SizedBox(height: 3,),
                              Text('Southampton',style:TextStyle(fontSize: 14,),),
                              SizedBox(height: 3,),
                              Text('Solent University',style:TextStyle(fontSize: 10,color: AppColors.greyColor),),
                              SizedBox(height: 3,),
                              Text('University of Soluthampton',style:TextStyle(fontSize: 10,color: AppColors.greyBorder),),
                              SizedBox(height: 3,),
                              Text('154.0',style:TextStyle(fontSize: 18,),),
                            ],
                          ),
                        ),Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(

                                child: Container(
                                  height: 162,
                                  width: 200,
                                  decoration:BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image:AssetImage(AppImages.homes)
                                      ),
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                ),
                                onTap: (){
                                  AppRoutes().nextScreen(context, DetailScreen());
                                },
                              ),
                              SizedBox(height: 3,),
                              Text('studio',style: TextStyle(color: AppColors.greyBorder),),
                              SizedBox(height: 3,),
                              Text('Examle I - Platinum Studio',style:TextStyle(fontSize: 16,),),
                              SizedBox(height: 3,),
                              Text('Southampton',style:TextStyle(fontSize: 14,),),
                              SizedBox(height: 3,),
                              Text('Solent University',style:TextStyle(fontSize: 10,color: AppColors.greyColor),),
                              SizedBox(height: 3,),
                              Text('University of Soluthampton',style:TextStyle(fontSize: 10,color: AppColors.greyBorder),),
                              SizedBox(height: 3,),
                              Text('154.0',style:TextStyle(fontSize: 18,),),
                            ],
                          ),
                        ),Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(

                                child: Container(
                                  height: 162,
                                  width: 200,
                                  decoration:BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image:AssetImage(AppImages.homes)
                                      ),
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                ),
                                onTap: (){
                                  AppRoutes().nextScreen(context, DetailScreen());
                                },
                              ),
                              SizedBox(height: 3,),
                              Text('studio',style: TextStyle(color: AppColors.greyBorder),),
                              SizedBox(height: 3,),
                              Text('Examle I - Platinum Studio',style:TextStyle(fontSize: 16,),),
                              SizedBox(height: 3,),
                              Text('Southampton',style:TextStyle(fontSize: 14,),),
                              SizedBox(height: 3,),
                              Text('Solent University',style:TextStyle(fontSize: 10,color: AppColors.greyColor),),
                              SizedBox(height: 3,),
                              Text('University of Soluthampton',style:TextStyle(fontSize: 10,color: AppColors.greyBorder),),
                              SizedBox(height: 3,),
                              Text('154.0',style:TextStyle(fontSize: 18,),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),

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
