
import 'package:dio/dio.dart';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
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

  File? imageFile = null;
  String? fileName;

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
       fileName = userDetailsResponse['data']['user_profile'].toString() ;
       citiesData = userDetailsResponse['data']['city_id'].toString() ;

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
      // print(studentOrParentData);
     });
   }

  void editUserDetails() async {
    SharedPreferences pref = await SharedPreferences.getInstance() ;
    var userId = pref.getString('userId');
    var token = pref.getString('token');
    var id = pref.getString('id');

    var param = {
      "user_type": studentOrParentData,
      "date_of_birth": dateData.text,
      "nationality": nationalityData.text,
      "languages": languagesData.text,
      "currency": currencyData.text,
      "city_id": '9,10',
      "user_profile": fileName,
      "apiParameters":{
        "user_id" : userId,
        "id" : id,
        "admin_id": null,
        "agent_id": null,
        "token": token
      }
    };
    print(param);
    var url = 'http://3.142.18.201/cwic/api/user/edit/user/details';
    var userDetailsDatas = await dio.post(url , data: param ,options: Options(headers: {
      'Authorization': 'Bearer $token',
    }));

    var userDetailsResponses = userDetailsDatas.data;
    var userDetailsStatuss = userDetailsResponses["message"].toString();
    //  var usersData = userDetailsResponse['data'].toString();

    print(userDetailsResponses);

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
                      InkWell(
                        onTap: (){
                          imagePickerDialog();
                        },
                        child: CircleAvatar(
                            radius: 60,
                            child: ClipOval(
                                child:
                                // Image.asset(AppImages.profileImage, height: 150, width: 150, fit: BoxFit.cover,),),
                               imageFile != null
                                    ? Image.file(
                                  imageFile!,
                                  height: 120,
                                  width: 120,
                                  fit: BoxFit.cover,
                                )
                                    : Image.network(
                                 fileName!,
                                  height: 120,
                                  width: 120,
                                  fit: BoxFit.cover,
                                ) )),
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
                              isParentOrGuardians = true;
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
                              isStudents = true;
                              isParentOrGuardians = false;
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
                              editUserDetails();
                              //getUserDetails();
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
  Future pickImage(ImageSource imageSource) async {
    final pickImage = ImagePicker();
    var imagePicked = await pickImage.pickImage(
        source: imageSource, maxHeight: 200, maxWidth: 200);
    if (imagePicked != null) {
      setState(() {
        // print(imagePicked);
        imageFile = File(imagePicked.path);
        fileName = (imageFile!.path);
        print('imageFile == ${imageFile}');
        print('fileName == ${fileName}');
      });
    } else {
      print('No image selected!');
    }
  }
  imagePickerDialog() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(14.0))),
            contentPadding: const EdgeInsets.only(top: 10.0),
            content: Container(
              width: 300.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Center(
                    child: Text(
                      "Choose profile",
                      style: TextStyle(fontSize: 16,color: AppColors.blackColor),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Divider(
                    color: Colors.grey.withOpacity(0.2),
                    height: 1.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          pickImage(ImageSource.gallery);
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          height: 80,
                          width: 80,
                          margin: const EdgeInsets.all(15.0),
                          padding: const EdgeInsets.all(3.0),
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                      5.0) //                 <--- border radius here
                              ),
                              border: Border.all(
                                  color: AppColors.primary.withOpacity(0.4))),
                          child: IconButton(
                            icon: Icon(
                              Icons.photo_library,
                              color: AppColors.blackColor.withOpacity(0.6),
                            ),
                            onPressed: () {
                              pickImage(ImageSource.gallery);
                              Navigator.of(context).pop();
                            },
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          pickImage(ImageSource.camera);
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          height: 80,
                          width: 80,
                          margin: const EdgeInsets.all(15.0),
                          padding: const EdgeInsets.all(3.0),
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                      5.0) //                 <--- border radius here
                              ),
                              border: Border.all(
                                  color: AppColors.primary.withOpacity(0.4))),
                          child: IconButton(
                            icon: Icon(Icons.camera_alt_rounded,
                                color: AppColors.blackColor.withOpacity(0.6)),
                            onPressed: () {

                              pickImage(ImageSource.camera);
                              Navigator.of(context).pop();
                            },
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
