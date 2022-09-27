import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_demo_cwic/Detail/detail_screen.dart';
import 'package:practice_demo_cwic/Utils/app_colors.dart';
import 'package:practice_demo_cwic/Utils/app_imges.dart';
import 'package:practice_demo_cwic/Utils/app_routes.dart';
import 'package:practice_demo_cwic/Widgets/custom_back_btn.dart';

class FilterResult extends StatefulWidget {

  const FilterResult({Key? key}) : super(key: key);
  @override
  _FilterResultState createState() => _FilterResultState();
}

class _FilterResultState extends State<FilterResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomBackButton(
                texts: 'Filter results',
                onPress: (){
                  AppRoutes.pop(context);
                },
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              height: 55,
                              color: AppColors.greyColor.withOpacity(0.2),
                              child: TextFormField(
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(top: 20,bottom: 20),
                                  hintText: 'Price low to high',
                                  hintStyle: TextStyle(color: AppColors.blackColor,fontSize: 14),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              height: 55,
                              color: AppColors.greyColor.withOpacity(0.2),
                              child: TextFormField(
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(top: 20,bottom: 20),
                                  hintText: 'Price high to low',
                                  hintStyle: TextStyle(color: AppColors.blackColor,fontSize: 14),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ),
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
                    SizedBox(height: 20,),
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
