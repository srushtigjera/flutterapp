import 'package:flutter/material.dart';
import 'package:practice_demo_cwic/Chat/chat_screen.dart';
import 'package:practice_demo_cwic/Profile/estate_profile.dart';
import 'package:practice_demo_cwic/Utils/app_colors.dart';
import 'package:practice_demo_cwic/Utils/app_imges.dart';
import 'package:practice_demo_cwic/Utils/app_routes.dart';
import 'package:practice_demo_cwic/Widgets/custom_back_btn.dart';
import 'package:practice_demo_cwic/Widgets/custom_btn.dart';

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
        child: Stack(
          alignment: const FractionalOffset(0.9,0.0),
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                                  style: TextStyle(color: AppColors.greyColor),
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
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                            height: 55,
                            color: AppColors.greyColor.withOpacity(0.2),
                            child: Row(
                              children: [
                                SizedBox(width: 20,),
                                Image.asset(AppImages.bednew,height: 17,width: 17,),
                                SizedBox(width: 20,),
                                Text('Double bad'),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                            height: 55,
                            color: AppColors.greyColor.withOpacity(0.2),
                            child: Row(
                              children: [
                                SizedBox(width: 20,),
                                Image.asset(AppImages.tile,height: 17,width: 17,),
                                SizedBox(width: 20,),
                                Text('Studio'),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                            height: 55,
                            color: AppColors.greyColor.withOpacity(0.2),
                            child: Row(
                              children: [
                                SizedBox(width: 20,),
                                Image.asset(AppImages.squarefit,height: 17,width: 17,),
                                SizedBox(width: 20,),
                                Text('17'),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                            height: 55,
                            color: AppColors.greyColor.withOpacity(0.2),
                            child: Row(
                              children: [
                                SizedBox(width: 20,),
                                Image.asset(AppImages.elevator,height: 17,width: 17,),
                                SizedBox(width: 20,),
                                Text('Fifth floor'),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Text('About the Property 🏠️',style: TextStyle(fontSize: 19,color: AppColors.primary),),
                        SizedBox(height: 10,),
                        Text('Every room has Wi-Fi, but there are lots of communal areas and study room for you to use as well'),
                        SizedBox(height: 20,),
                        Text('Facilities Include ⭐',style: TextStyle(fontSize: 19,color: AppColors.primary),),
                        SizedBox(height: 10,),
                        Text('Desk chair, Drawers, Tall mirror, Notice board '),
                        SizedBox(height: 20,),
                        Text('Bills Included 💸',style: TextStyle(fontSize: 19,color: AppColors.primary),),
                        SizedBox(height: 10,),
                        Text('All bills included '),
                        SizedBox(height: 20,),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                            height: 55,
                            color: AppColors.greyColor.withOpacity(0.2),
                            child: Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(width: 20,),
                                Text('Distance to University',style: TextStyle(fontSize: 15),),
                                Spacer(flex: 30,),
                                Text('10 min walk',style: TextStyle(color: AppColors.greyColor,fontSize: 10),),
                                SizedBox(width: 20,)
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                            height: 55,
                            color: AppColors.greyColor.withOpacity(0.2),
                            child: Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(width: 20,),
                                Text('Distance to Town center',style: TextStyle(fontSize: 15),),
                                Spacer(flex: 30,),
                                Text('3 min walk',style: TextStyle(color: AppColors.greyColor,fontSize: 10),),
                                SizedBox(width: 20,)
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                            height: 55,
                            color: AppColors.greyColor.withOpacity(0.2),
                            child: Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(width: 20,),
                                Text('Public Transport',style: TextStyle(fontSize: 15),),
                                Spacer(flex: 30,),
                                Text('2 min walk',style: TextStyle(color: AppColors.greyColor,fontSize: 10),),
                                SizedBox(width: 20,)
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Text('Other Amenities️',style: TextStyle(fontSize: 19,color: AppColors.primary),),
                        SizedBox(height: 20,),
                      ],
                    ),
                  ),
                  Divider(height: 1,color: AppColors.greyColor,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           SizedBox(height: 20,),
                           Text('Agent Details️️',style: TextStyle(fontSize: 19,color: AppColors.primary),),
                           SizedBox(height: 15,),
                           ClipRRect(
                             borderRadius: BorderRadius.circular(15),
                             child: Container(
                               width: MediaQuery.of(context).size.width,
                               height: 80,
                               color: AppColors.lightGreyColor,
                               child: Padding(
                                 padding: const EdgeInsets.only(top:10,left: 20.0),
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     Text('CWICLY',style: TextStyle(fontSize: 15),),
                                     SizedBox(height: 10,),
                                     Text('CWIC' , style: TextStyle(fontSize: 15),),
                                     SizedBox(height: 20,),
                                   ],
                                 ),
                               ),
                             ),
                           ),
                           SizedBox(height: 20,),
                           SizedBox(
                             height: 55,
                             child: CustomButton(
                                 height: 55,
                                 buttonText: 'View agent profile ',
                                 primary: AppColors.white,
                                 txtColor: AppColors.primary,
                                 buttonBorder: AppColors.greyBorder.withOpacity(0.2),
                                 onPressed: (){
                                   setState(() {
                                      AppRoutes().nextScreen(context, EstateProfile());
                                   });
                                 }),
                           ),
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
                padding: const EdgeInsets.only(left: 20.0,right: 20,bottom: 10),
                child: SizedBox(
                  height: 55,
                  child: CustomButton(
                      height: 55,
                      buttonText: 'Enquire ✍️',
                      primary: AppColors.primary,
                      txtColor: AppColors.white,
                      buttonBorder: AppColors.primary.withOpacity(0.2),
                      onPressed: (){
                        setState(() {
                           AppRoutes().nextScreen(context, ChatScreen());
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
