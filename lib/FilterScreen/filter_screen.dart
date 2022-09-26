import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_demo_cwic/Utils/app_colors.dart';
import 'package:practice_demo_cwic/Widgets/custom_back_btn.dart';
import 'package:practice_demo_cwic/Widgets/custom_btn.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
               CustomBackButton(
                 texts: 'Filter 🔍',
               ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('City',style: TextStyle( color: AppColors.primary,fontSize: 18),),
                        SizedBox(height: 10,),
                        ClipRRect(
                         borderRadius: BorderRadius.circular(15),
                         child: Container(
                           color: AppColors.greyColor.withOpacity(0.2),
                           height: 55,
                           width: MediaQuery.of(context).size.width,
                           child: TextFormField(
                             decoration: InputDecoration(
                               contentPadding: EdgeInsets.only(top: 20,left: 15,bottom: 20),
                               hintText: 'All Cities',
                               hintStyle: TextStyle(color: AppColors.blackColor,fontSize: 14),
                               suffixIcon: Icon(Icons.keyboard_arrow_down_rounded, size: 24,color: AppColors.blackColor,),
                               border: InputBorder.none,
                             ),
                           )
                         ),
                       ),
                        SizedBox(height: 15,),
                        Text('Type of listing',style: TextStyle( color: AppColors.primary,fontSize: 18),),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Container(
                                  height: 55,
                                  color: AppColors.greyColor.withOpacity(0.2),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(top: 20,left: MediaQuery.of(context).size.width * 0.08,bottom: 20),
                                      hintText: 'Private Room',
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
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(top: 20,left: MediaQuery.of(context).size.width * 0.06,bottom: 20),
                                      hintText: 'Private Ensuite',
                                      hintStyle: TextStyle(color: AppColors.blackColor,fontSize: 14),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Container(
                                  height: 55,
                                  color: AppColors.greyColor.withOpacity(0.2),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(top: 20,left: MediaQuery.of(context).size.width * 0.15,bottom: 20),
                                      hintText: 'Studio',
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
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(top: 20,left:  MediaQuery.of(context).size.width * 0.1,bottom: 20),
                                      hintText: 'Apartment',
                                      hintStyle: TextStyle(color: AppColors.blackColor,fontSize: 14),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Text('Price per Week 💸',style: TextStyle( color: AppColors.primary,fontSize: 18),),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Container(
                                  height: 55,
                                  color: AppColors.greyColor.withOpacity(0.2),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(top: 20,left: 15,bottom: 20),
                                      hintText: 'min',
                                      hintStyle: TextStyle(color: AppColors.blackColor,fontSize: 14),
                                      border: InputBorder.none,
                                      suffixIcon: Icon(Icons.keyboard_arrow_down_rounded, size: 24,color: AppColors.blackColor,),
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
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(top: 20,left: 15,bottom: 20),
                                      hintText: 'max',
                                      hintStyle: TextStyle(color: AppColors.blackColor,fontSize: 14),
                                      border: InputBorder.none,
                                      suffixIcon: Icon(Icons.keyboard_arrow_down_rounded, size: 24,color: AppColors.blackColor,),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Text('Max Distance to University🎓',style: TextStyle( color: AppColors.primary,fontSize: 18),),
                        SizedBox(height: 10,),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                              color: AppColors.greyColor.withOpacity(0.2),
                              height: 55,
                              width: MediaQuery.of(context).size.width,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(top: 20,left: 15,bottom: 20),
                                  hintText: '0 min walk',
                                  hintStyle: TextStyle(color: AppColors.blackColor,fontSize: 14),
                                  suffixIcon: Icon(Icons.keyboard_arrow_down_rounded, size: 24,color: AppColors.blackColor,),
                                  border: InputBorder.none,
                                ),
                              )
                          ),
                        ),
                        SizedBox(height: 15,),
                        Text('Further Amenities 📝',style: TextStyle( color: AppColors.primary,fontSize: 18),),
                        SizedBox(height: 100,),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 15),
                child:  SizedBox(
                  height: 55,
                  child: CustomButton(
                      height: 55,
                      buttonText: 'Filter results',
                      primary: AppColors.primary,
                      txtColor: AppColors.white,
                      buttonBorder: AppColors.primary,
                      onPressed: (){
                        setState(() {
                          // AppRoutes().nextScreen(context, LoginScreen());
                        });
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
