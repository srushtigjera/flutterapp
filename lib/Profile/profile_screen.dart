import 'dart:convert';
import 'dart:html';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_demo_cwic/Detail/user_details.dart';
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

  var img ;
  var emailData ='';
  var ageData ='';
  var nameData ='';
  var nationalityData ='';
  var languagesData ='';
  var citiesData ='';
  var currencyData ='';
  var studentOrParentData ='';
 // var imgData;
  Dio dio = Dio();

  userDetails userData = userDetails();


   getData() async {
     SharedPreferences prefs = await SharedPreferences.getInstance();
     setState(() {
       emailData = prefs.getString("emaill")!;
       // nameData = prefs.getString("name");
       nationalityData = prefs.getString("nationality")!;
       languagesData = prefs.getString("language")!;
       citiesData = prefs.getString("citiess")!;
       currencyData = prefs.getString("currency")!;
       studentOrParentData = prefs.getString("studentOrParent")!;
     });
    // imgData = prefs.getString("img");
    // print("images of data    $imgData");
   //  print("$nameData");
  }

  void getUserDetails() async {
    SharedPreferences pref = await SharedPreferences.getInstance() ;
    var userId = pref.getString('userId');
    var token = pref.getString('token');
    var id = pref.getString('id');

    var param = {
    "apiParameters":{
      "user_id" : userId,
      "id" : id }
    };
    var url = 'http://3.142.18.201/cwic/api/user/get/user/details';
    var userDetailsData = await dio.post(url , data: param ,options: Options(headers: {
      'Authorization': 'Bearer $token',
    }));

    var userDetailsResponse = userDetailsData.data;
    var userDetailsStatus = userDetailsResponse["status"].toString();
  //  var usersData = userDetailsResponse['data'].toString();
    setState(() {
      emailData = userDetailsResponse['data']['user_email'].toString();
      ageData = userDetailsResponse['data']['age'].toString();
      nationalityData = userDetailsResponse['data']['nationality'].toString();
      languagesData = userDetailsResponse['data']['languages'].toString();
      currencyData = userDetailsResponse['data']['currency'].toString();
      studentOrParentData = userDetailsResponse['data']['user_type'].toString();
      nameData = userDetailsResponse['data']['user_full_name'].toString();
      img =userDetailsResponse['data']['user_profile'].toString() ;
    });

    if(userDetailsStatus == "Success")
    {

    }
  }

  void logOut() async {

     SharedPreferences pref = await SharedPreferences.getInstance() ;
     var userId = pref.getString('userId');
     var token = pref.getString('token');
     var param = {
       "user_id" : userId
     };

     var url = 'http://3.142.18.201/cwic/api/user/logout';
     var logOutData = await dio.post(url , data: param ,options: Options(headers: {
       'Authorization': 'Bearer $token',
     }));

     var logOutResponse = logOutData.data;
     var logOutSuccess = logOutResponse["status"].toString();

     if(logOutSuccess == "Success"){
       AppRoutes().nextAndRemoveUtils(context, LoginHomeScreen());
     }
  }
  @override
  void initState() {
    //getData();
    getUserDetails();
    super.initState();
  }

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
                               child: Image.network(img,
                                 height: 120,
                                 width: 120,
                                 fit: BoxFit.cover,
                               )
                           ),
                         ),
                         SizedBox(width: 25,),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text(nameData!,style: TextStyle(color: AppColors.blackColor,fontSize: 16),),
                             Text(emailData!,style: TextStyle(color: AppColors.greyColor),)
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
                                 Expanded(child: Text(studentOrParentData!)),
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
                                 Expanded(child: Text(ageData!)),
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
                                 Expanded(child: Text(nationalityData!)),
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
                                 Expanded(child: Text(languagesData!)),
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
                                 Expanded(child: Text(currencyData!)),
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
                                 Expanded(child: Text(citiesData)),
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
                                     logOut();

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
