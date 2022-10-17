
import 'package:dio/dio.dart';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_demo_cwic/Utils/app_colors.dart';
import 'package:practice_demo_cwic/Utils/app_imges.dart';
import 'package:practice_demo_cwic/Utils/app_routes.dart';
import 'package:practice_demo_cwic/Widgets/custom_back_btn.dart';
import 'package:practice_demo_cwic/Widgets/custom_btn.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {

  bool isParentOrGuardians = false;
  bool isStudents = false;
  var emailDatas = TextEditingController();
  var nameData = TextEditingController();
  var nationalityData = TextEditingController();
  var languagesData = TextEditingController();
  var currencyData = TextEditingController();
  var dateData = TextEditingController();
  var img = "";
  var citiesData = "";
  var studentOrParentData = "";
  var imgData = "";
  bool parentOrGuardians = false;
  bool students = false;
  Dio dio = Dio();

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
       emailDatas.text = userDetailsResponse['data']['user_email'].toString() ;
       nationalityData.text = userDetailsResponse['data']['nationality'].toString() ;
       languagesData.text = userDetailsResponse['data']['languages'].toString();
       currencyData.text = userDetailsResponse['data']['currency'].toString() ;
       studentOrParentData = userDetailsResponse['data']['user_type'].toString() ;
       nameData.text = userDetailsResponse['data']['user_full_name'].toString() ;
       img =userDetailsResponse['data']['user_profile'].toString() ;
       dateData.text = userDetailsResponse['data']['date_of_birth'].toString() ;

      if(studentOrParentData == 'Student'){
         setState(() {
           isParentOrGuardians = false;
           isStudents = true;
         });
       }
      if(studentOrParentData == 'Parent'){
         setState(() {
           isParentOrGuardians = true;
           isStudents = false;
         });
       }
       print(studentOrParentData);
     });
   }

  @override
  void initState() {
    getUserDetails();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomBackButton(
                onPress: (){
                    AppRoutes.pop(context);
                },
                texts: '',
                applogo: false,
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 60,
                        child: ClipOval(
                            child: Image.network(img,
                              height: 120,
                              width: 120,
                              fit: BoxFit.cover,
                            )
                        ),
                      ),
                      Positioned(
                        bottom: 1,
                        right: 1,
                        child: CircleAvatar(
                          radius: 20,
                         backgroundColor:AppColors.primary,
                          child: Container(
                           // color: AppColors.primary,
                            child: Icon(Icons.add_a_photo,color: AppColors.white,),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(right: 11,left: 11),
                child: Row(
                  children: [
                    Transform.scale(
                      scale: 1.2,
                      child: Checkbox(
                        // checkColor: AppColors.primary,
                        //activeColor: AppColors.primary,
                          side: BorderSide(
                              color: AppColors.primary
                          ),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular((6.0))),
                          value: isParentOrGuardians,
                          onChanged: (data){
                            setState(() {
                              isParentOrGuardians = data!;
                              print(isParentOrGuardians);
                              isStudents = false;
                            });
                          }),
                    ),
                    Text("I'm a Parent/Guardian",style: TextStyle(color: AppColors.blackColor,fontSize: 15),),

                    Transform.scale(
                      scale: 1.2,
                      child: Checkbox(
                          side: BorderSide(
                              color: AppColors.primary
                          ),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular((6.0))),
                          value: isStudents,
                          onChanged: (data){
                            print (data);
                            setState(() {
                              isStudents = data!;
                              isParentOrGuardians = false;
                              print(isStudents);
                            });
                          }
                      ),
                    ),
                    Text("I'm a Student",style: TextStyle(color: AppColors.blackColor,fontSize: 15),)
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 5.0),
                     child: Text('Full Name',style: TextStyle(color: AppColors.greyColor),),
                   ),
                    SizedBox(height: 5,),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.greyColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: TextFormField(
                        controller: nameData,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 20,left: 15,bottom: 20), // add padding to adjust text
                           // hintText: "srushti",
                            border: InputBorder.none,
                          )),
                    ),
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text('E-mail',style: TextStyle(color: AppColors.greyColor),),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.greyColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: TextFormField(
                        controller: emailDatas,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 20,left: 15,bottom: 20), // add padding to adjust text
                          //  hintText: "srushti@gmail.com",
                            border: InputBorder.none,
                          )),
                    ),
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text('What is your date of birth?',style: TextStyle(color: AppColors.greyColor),),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.greyColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: TextFormField(
                        controller: dateData,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 20,left: 15,bottom: 20), // add padding to adjust text
                          //  hintText: "1-jan-1920",
                            border: InputBorder.none,
                          )),
                    ),
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text('What is your Nationaliy?',style: TextStyle(color: AppColors.greyColor),),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.greyColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: TextFormField(
                        controller: nationalityData,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 20,left: 15,bottom: 20), // add padding to adjust text
                           // hintText: "India",
                            border: InputBorder.none,
                          )),
                    ),
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text('What language do you speak?',style: TextStyle(color: AppColors.greyColor),),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.greyColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: TextFormField(
                        controller: languagesData,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 20,left: 15,bottom: 20), // add padding to adjust text
                           // hintText: "Gujarati",
                            border: InputBorder.none,
                          )),
                    ),
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text('Interested city',style: TextStyle(color: AppColors.greyColor),),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.greyColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 20,left: 15,bottom: 20), // add padding to adjust text
                            hintText: "Bristol",
                            border: InputBorder.none,
                          )),
                    ),
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text('Currency',style: TextStyle(color: AppColors.greyColor),),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.greyColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: TextFormField(
                        controller: currencyData,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 20,left: 15,bottom: 20), // add padding to adjust text
                           // hintText: "GBP",
                            border: InputBorder.none,
                          )),
                    ),

                    SizedBox(height: 35,),
                    SizedBox(
                      height: 55,
                      child: CustomButton(
                          height: 55,
                          buttonText: 'Update profile',
                          primary: AppColors.primary,
                          txtColor: AppColors.white,
                          buttonBorder: AppColors.greyBorder.withOpacity(0.2),
                          onPressed: (){
                            setState(() {
                              // AppRoutes().nextScreen(context, LoginScreen());
                            });
                          }),
                    ),
                    SizedBox(height: 15,),
                    SizedBox(
                      height: 55,
                      child: CustomButton(
                          height: 55,
                          buttonText: 'Delete',
                          primary: AppColors.primary,
                          txtColor: AppColors.white,
                          buttonBorder: AppColors.greyBorder.withOpacity(0.2),
                          onPressed: (){
                            setState(() {
                              // AppRoutes().nextScreen(context, LoginScreen());
                            });
                          }),
                    ),
                    SizedBox(height: 30,),
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
