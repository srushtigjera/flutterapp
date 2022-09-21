import 'package:flutter/material.dart';
import 'package:practice_demo_cwic/Utils/app_colors.dart';
import 'package:practice_demo_cwic/Utils/app_imges.dart';
import 'package:practice_demo_cwic/Utils/app_routes.dart';
import 'package:practice_demo_cwic/Widgets/custom_back_btn.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
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
                    applogo: false,
                  ),
                  Spacer(flex: 15,),
                   SizedBox(height: 10,),
                   ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      color:AppColors.greyColor.withOpacity(0.2),
                      width: 44,
                      height: 44,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Image.asset(AppImages.arcv,color: Colors.black,),
                      ),
                    ),
                  ),
                  Spacer(),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Container(
                        color:AppColors.greyColor.withOpacity(0.2),
                        width: 44,
                        height: 44,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset(AppImages.more,color: Colors.black,),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 190,
                      //child: Image.asset(AppImages.homes,fit: BoxFit.fill,height: 200,),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(AppImages.homes),
                        )
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text('Studio',style: TextStyle(color: AppColors.greyBorder),),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: Text('Example I - Platinum Studio',style: TextStyle(color: AppColors.primary,fontSize: 22),)),
                        Expanded(child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('152.0',style: TextStyle(color: AppColors.primary,fontSize: 15),),
                          ],
                        )),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: Text('Southampton',style: TextStyle(color: AppColors.blackColor,fontSize: 22),)),
                        Expanded(child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                                height: 43,
                                width: MediaQuery.of(context).size.width * 0.3,
                                decoration: BoxDecoration(
                                    color:  AppColors.lightGreyColor,
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                        height: 20,width: 20,
                                        child: Image.asset(AppImages.mapPin,color: AppColors.primary,)),
                                    SizedBox(
                                      width: 7.0,
                                    ),
                                    Text(
                                      'Map',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ],
                                ))
                          ],
                        )),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Text('Solent University',style: TextStyle(color: AppColors.greyBorder,fontSize: 15),),
                        SizedBox(width: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: 17,width: 17,
                                child: Image.asset(AppImages.walk,color: AppColors.greyBorder,)),

                            SizedBox(height: 10,),
                            Text(
                              '10 min',
                              style: TextStyle(color: AppColors.greyBorder),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Text('University of Southanpton',style: TextStyle(color: AppColors.greyBorder,fontSize: 15),),
                        SizedBox(width: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: 17,width: 17,
                                child: Image.asset(AppImages.walk,color: AppColors.greyBorder,)),

                            SizedBox(height: 10,),
                            Text(
                              '35 min',
                              style: TextStyle(color: AppColors.greyBorder),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Divider(color: AppColors.greyBorder,height: 1,),

            ],
          ),
        ),
      ),
    );
  }
}
