import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_demo_cwic/Utils/app_colors.dart';
import 'package:practice_demo_cwic/Utils/app_imges.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 15.0,left: 15,top: 20),
            child: Column(
              children: [
               Image.asset(AppImages.cwick),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                        height: 43,
                        width: MediaQuery.of(context).size.width * 0.6,
                        decoration: BoxDecoration(
                          color:  AppColors.primary,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: 17,width: 17,
                                child: Image.asset(AppImages.filter,color: AppColors.white,)),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              'Search & Filter' ,style: TextStyle(color:AppColors.white),
                            ),
                          ],
                        )),
                  ),

                    SizedBox(width: 15,),
                    Expanded(
                      child: Container(
                          height: 43,
                          width: MediaQuery.of(context).size.width * 0.2,
                          decoration: BoxDecoration(
                              color:  AppColors.lightGreyColor,
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                  height: 17,width: 17,
                                  child: Image.asset(AppImages.mapPin,color: AppColors.primary,)),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                'Map',
                              ),
                            ],
                          )),
                    ),
                ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Featured Listings ⭐',style: TextStyle(fontSize: 23,color: AppColors.primary),),
                    Image.asset(AppImages.notification,color: AppColors.primary,height: 23,width: 23,)
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  child: GridView(
                    shrinkWrap: true,
                 //   physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 0,
                        crossAxisSpacing: 10
                      ),
                    children: [
                      Image.asset(AppImages.homes),
                      Image.asset(AppImages.homes),
                      Image.asset(AppImages.homes),
                      Image.asset(AppImages.homes),
                      Image.asset(AppImages.homes),
                      Image.asset(AppImages.homes),
                      Image.asset(AppImages.homes),
                      Image.asset(AppImages.homes),
                      Image.asset(AppImages.homes),
                      Image.asset(AppImages.homes),
                      Image.asset(AppImages.homes),
                      Image.asset(AppImages.homes),
                      Image.asset(AppImages.homes),
                      Image.asset(AppImages.homes)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
