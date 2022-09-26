import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_demo_cwic/Detail/detail_screen.dart';
import 'package:practice_demo_cwic/Utils/app_colors.dart';
import 'package:practice_demo_cwic/Utils/app_imges.dart';
import 'package:practice_demo_cwic/Utils/app_routes.dart';
import 'package:practice_demo_cwic/Widgets/custom_back_btn.dart';
import 'package:practice_demo_cwic/Widgets/custom_btn.dart';

class EstateProfile extends StatefulWidget {
  const EstateProfile({Key? key}) : super(key: key);

  @override
  _EstateProfileState createState() => _EstateProfileState();
}

class _EstateProfileState extends State<EstateProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomBackButton(
                onPress: (){
                  AppRoutes.pop(context);
                },
                texts: '',
                applogo: false,
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20,top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          child:Container(
                            child: Image.asset(AppImages.profilepic),
                          )
                        ),
                        SizedBox(width: 15,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('CWICLY',style: TextStyle(fontSize: 18,color: AppColors.primary),),
                            SizedBox(height: 5,),
                            Text('CWIC' , style: TextStyle(fontSize: 15),),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Text('About the agency',style: TextStyle(fontSize: 20,color: AppColors.primary),),
                    SizedBox(height: 5,),
                    Text('Homes found CWIC' , style: TextStyle(fontSize: 14),),
                    SizedBox(height: 30,),
                    SizedBox(
                      height: 55,
                      child: CustomButton(
                          height: 55,
                          buttonText: 'Message ✍️',
                          primary: AppColors.primary,
                          txtColor: AppColors.white,
                          buttonBorder: AppColors.primary,
                          onPressed: (){
                            setState(() {
                             // AppRoutes().nextScreen(context, LoginScreen());
                            });
                          }),
                    ),
                    SizedBox(height: 10,),
                    SizedBox(
                      height: 55,
                      child: CustomButton(
                          height: 55,
                          buttonText: 'Call with CWICLY',
                          primary: AppColors.primary,
                          txtColor: AppColors.white,
                          buttonBorder: AppColors.primary,
                          onPressed: (){
                            setState(() {
                              // AppRoutes().nextScreen(context, LoginScreen());
                            });
                          }),
                    ),
                    SizedBox(height: 20,),
                    
                   Text('Listing',style: TextStyle(fontSize: 18),)
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Divider(color: AppColors.greyColor,height: 1,),
              SizedBox(height: 15,),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Container(
                      child: GridView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 6,
                            crossAxisSpacing: 10,
                            childAspectRatio: MediaQuery.of(context).size.width / (MediaQuery.of(context).size.height / 0.96 )
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
                  ],
                ),
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
