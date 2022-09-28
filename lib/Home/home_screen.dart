import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_demo_cwic/Detail/detail_screen.dart';
import 'package:practice_demo_cwic/LocationWiseData/location_wise_data.dart';
import 'package:practice_demo_cwic/Utils/app_colors.dart';
import 'package:practice_demo_cwic/Utils/app_imges.dart';
import 'package:practice_demo_cwic/Utils/app_routes.dart';

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
                    physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 6,
                        crossAxisSpacing: 10,
                        childAspectRatio: MediaQuery.of(context).size.width / (MediaQuery.of(context).size.height / 01.0 )
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
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('By Location 📍',style: TextStyle(fontSize: 23,color: AppColors.primary),),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        AppRoutes().nextScreen(context, LocationWiseData());
                      },
                      child: Expanded(
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
                                Text(
                                  'Southampton',
                                ),
                              ],
                            )),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: (){
                        AppRoutes().nextScreen(context, LocationWiseData());
                      },
                      child: Expanded(
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
                                Text(
                                  'Bristol',
                                ),
                              ],
                            )),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        AppRoutes().nextScreen(context, LocationWiseData());
                      },
                      child: Expanded(
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
                                Text(
                                  'Southampton',
                                ),
                              ],
                            )),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: (){
                        AppRoutes().nextScreen(context, LocationWiseData());
                      },
                      child: Expanded(
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
                                Text(
                                  'Bristol',
                                ),
                              ],
                            )),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        AppRoutes().nextScreen(context, LocationWiseData());
                      },
                      child: Expanded(
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
                                Text(
                                  'Southampton',
                                ),
                              ],
                            )),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: (){
                        AppRoutes().nextScreen(context, LocationWiseData());
                      },
                      child: Expanded(
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
                                Text(
                                  'Bristol',
                                ),
                              ],
                            )),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Top 10 Trending 💯',style: TextStyle(fontSize: 23,color: AppColors.primary),),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  child: GridView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 6,
                        crossAxisSpacing: 10,
                        childAspectRatio: MediaQuery.of(context).size.width / (MediaQuery.of(context).size.height / 01.0 )
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
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
