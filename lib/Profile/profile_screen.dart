import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_demo_cwic/Login/login_home_screen.dart';
import 'package:practice_demo_cwic/Notifications/notification_screen.dart';
import 'package:practice_demo_cwic/changeEmail/change_email_screen.dart';
import 'package:practice_demo_cwic/changepassword/change_password_screen.dart';
import 'package:practice_demo_cwic/faq_screen.dart';
import 'package:practice_demo_cwic/Utils/app_colors.dart';
import 'package:practice_demo_cwic/Utils/app_imges.dart';
import 'package:practice_demo_cwic/Utils/app_routes.dart';
import 'package:practice_demo_cwic/about_us_screen.dart';
import 'package:practice_demo_cwic/brand_ambassadors_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'editprofile_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool visibles = false;
  bool signOut = true;


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){
        setState(() {
          visibles = false;
        });
      },
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              alignment: const FractionalOffset(0.9,0.16),
             children: [
               Column(
                 children: [
                   Padding(
                     padding:  EdgeInsets.only(right: 20,left: 20,top: size.height * 0.04, bottom: size.height *0.03),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text('Your Profile 😇️️️️️',style: TextStyle(fontSize: 25,color: AppColors.primary),),
                         GestureDetector(
                           onTap: (){
                             setState(() {
                               visibles = !visibles;
                             });
                           },
                           child: Container(
                             height: 44,
                             width: 44,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(15),
                               color: AppColors.white,
                               border: Border.all(color: AppColors.greyColor.withOpacity(0.2),width: 1),
                             ),
                             child: Padding(
                               padding: const EdgeInsets.all(12.0),
                               child: Image.asset(AppImages.moreNew,color: AppColors.blackColor),
                             ),
                           ),
                         )
                       ],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20.0),
                     child: Row(
                       children: [
                         CircleAvatar(
                           radius: 45,
                           child: ClipOval(
                               child: Image.asset(AppImages.profilepic,
                                 height: 120,
                                 width: 120,
                                 fit: BoxFit.cover,)
                           ),
                         ),
                         SizedBox(width: 25,),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text('SRUSHTI',style: TextStyle(color: AppColors.blackColor,fontSize: 16),),
                             Text('srushtigajera234@gmail.com',style: TextStyle(color: AppColors.greyColor),)
                           ],
                         )
                       ],
                     ),
                   ),
                   SizedBox(height: 25,),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20.0),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text('Details',style: TextStyle(fontSize: 15),),
                         GestureDetector(
                             onTap: (){
                               AppRoutes().nextScreen(context, EditProfileScreen());
                             },
                             child: Text('Edit profile details',style: TextStyle(color: AppColors.greyColor),)),
                       ],),
                   ),
                   SizedBox(height: 15,),
                   Divider(height: 1,color: AppColors.greyColor,),
                   SizedBox(height: 15,),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20.0),
                     child: Column(children: [
                       ClipRRect(
                         borderRadius: BorderRadius.circular(15),
                         child: Container(
                           color: AppColors.greyColor.withOpacity(0.2),
                           width: double.infinity,
                           height: 55,
                           child: Padding(
                             padding: const EdgeInsets.only(left: 20,),
                             child: Row(
                               children: [
                                 Expanded(child: Text('User')),
                                 Expanded(child: Text('Student')),
                               ],
                             ),
                           ),
                         ),
                       )
                     ],),
                   ),
                   SizedBox(height: 15,),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20.0),
                     child: Column(children: [
                       ClipRRect(
                         borderRadius: BorderRadius.circular(15),
                         child: Container(
                           color: AppColors.greyColor.withOpacity(0.2),
                           width: double.infinity,
                           height: 55,
                           child: Padding(
                             padding: const EdgeInsets.only(left: 20,),
                             child: Row(
                               children: [
                                 Expanded(child: Text('Age')),
                                 Expanded(child: Text('22')),
                               ],
                             ),
                           ),
                         ),
                       )
                     ],),
                   ),
                   SizedBox(height: 15,),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20.0),
                     child: Column(children: [
                       ClipRRect(
                         borderRadius: BorderRadius.circular(15),
                         child: Container(
                           color: AppColors.greyColor.withOpacity(0.2),
                           width: double.infinity,
                           height: 55,
                           child: Padding(
                             padding: const EdgeInsets.only(left: 20,),
                             child: Row(
                               children: [
                                 Expanded(child: Text('Nationality')),
                                 Expanded(child: Text('Albanian')),
                               ],
                             ),
                           ),
                         ),
                       )
                     ],),
                   ),
                   SizedBox(height: 15,),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20.0),
                     child: Column(children: [
                       ClipRRect(
                         borderRadius: BorderRadius.circular(15),
                         child: Container(
                           color: AppColors.greyColor.withOpacity(0.2),
                           width: double.infinity,
                           height: 55,
                           child: Padding(
                             padding: const EdgeInsets.only(left: 20,),
                             child: Row(
                               children: [
                                 Expanded(child: Text('languages')),
                                 Expanded(child: Text('English')),
                               ],
                             ),
                           ),
                         ),
                       )
                     ],),
                   ),
                   SizedBox(height: 15,),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20.0),
                     child: Column(children: [
                       ClipRRect(
                         borderRadius: BorderRadius.circular(15),
                         child: Container(
                           color: AppColors.greyColor.withOpacity(0.2),
                           width: double.infinity,
                           height: 55,
                           child: Padding(
                             padding: const EdgeInsets.only(left: 20,),
                             child: Row(
                               children: [
                                 Expanded(child: Text('Currency')),
                                 Expanded(child: Text('GHS')),
                               ],
                             ),
                           ),
                         ),
                       )
                     ],),
                   ),
                   SizedBox(height: 15,),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20.0),
                     child: Column(children: [
                       ClipRRect(
                         borderRadius: BorderRadius.circular(15),
                         child: Container(
                           color: AppColors.greyColor.withOpacity(0.2),
                           width: double.infinity,
                           height: 55,
                           child: Padding(
                             padding: const EdgeInsets.only(left: 20,),
                             child: Row(
                               children: [
                                 Expanded(child: Text('Cities')),
                                 Expanded(child: Text('Nottingham')),
                               ],
                             ),
                           ),
                         ),
                       )
                     ],),
                   )
                 ],
               ),
               Visibility(
                 visible: visibles,
                 child: ClipRRect(
                   borderRadius: BorderRadius.circular(10),
                   child: Container(
                     color: AppColors.greyColorV2,
                       child: Padding(
                         padding: const EdgeInsets.only(left: 15,top: 20,bottom: 20,right: 50),
                         child: SingleChildScrollView(
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               GestureDetector(
                                 onTap: (){
                                   setState(() {
                                    AppRoutes().nextScreen(context, AboutUs());
                                    visibles = false;
                                   });
                                 },
                                   child: Text( "About Us")),
                               SizedBox(height: 8,),
                               GestureDetector(
                                   onTap: (){
                                     AppRoutes().nextScreen(context, BrandAmbassadors());
                                     visibles = false;
                                   },
                                   child: Text("Brand Ambassadors")),
                               SizedBox(height: 8,),
                               GestureDetector(
                                   onTap: (){
                                     AppRoutes().nextScreen(context, FAQs());
                                     visibles = false;
                                   },
                                   child: Text("FAQs")),
                               SizedBox(height: 8,),
                          GestureDetector(
                              onTap: (){
                                AppRoutes().nextScreen(context, NotificationScreen());
                                visibles = false;
                              },
                              child: Text("Notification Settings")),
                               SizedBox(height: 8,),
                               GestureDetector(
                                   onTap: (){
                                     AppRoutes().nextScreen(context, ChangePasswordScreen());
                                     visibles = false;
                                   },
                                   child: Text("Change Password")),
                               SizedBox(height: 8,),
                               GestureDetector(
                                   onTap: (){
                                     AppRoutes().nextScreen(context, ChangeEmailScreen());
                                     visibles = false;
                                   },
                                   child: Text("Change Email")),
                               SizedBox(height: 8,),
                               GestureDetector(
                                   onTap: () async {
                                     signOut = false;
                                     SharedPreferences prefs = await SharedPreferences.getInstance();
                                     prefs.setBool("logindata", signOut);
                                     AppRoutes().nextAndRemoveUtils(context, LoginHomeScreen());
                                    // AppRoutes().nextScreen(context, LoginHomeScreen());
                                   },
                                   child: Text("Sign Out",style: TextStyle(color: Colors.red),)),
                             ],
                           ),
                         ),
                       )),
                 ),
               ),
             ],
            ),
          ),
        ),
      ),
    );
  }
}
