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
   bool checkParant = false ;
   bool checkStudent = false ;

  bool isParentOrGuardians = false;
  bool isStudents = false;

  var emails = TextEditingController();
  var fullName = TextEditingController();
  var nationality = TextEditingController();
  var language = TextEditingController();
  var Currency = TextEditingController();
  var date = TextEditingController();

  var emailData;
  var nameData;
  var nationalityData;
  var languagesData;
  var citiesData;
  var currencyData;
  var studentOrParentData;
  var imgData;
  var dateData;
  bool parentOrGuardians = false;
  bool students = false;

  getData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
 //   parentOrGuardians = prefs.getBool("parentOrGuardian")!;
  //  students = prefs.getBool("student")!;
    emailData = prefs.getString("emaill");
    nameData = prefs.getString("name");
    nationalityData = prefs.getString("nationality");
    languagesData = prefs.getString("language");
    citiesData = prefs.getString("citiess");
    currencyData = prefs.getString("currency");
    studentOrParentData = prefs.getString("studentOrParent");
    dateData = prefs.getString("date");
    imgData = prefs.getString("img");

    print('Email id  $students');
    print('Email id  $parentOrGuardians');

    setState(() {
       emails.text = emailData!;
       fullName.text = nameData!;
       nationality.text = nationalityData!;
       language.text = languagesData!;
       Currency.text = currencyData!;
       date.text = dateData!;
/*
       if(parentOrGuardians == true){
         checkParant = true;
         checkStudent = false;
       }

       if(students == true){
         checkParant = false;
         checkStudent = true;
       }*/

       /*checkParant = parentOrGuardian!;
       checkStudent = student!;*/
    });
  }
  @override
  void initState() {
    getData();
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
                        child: ClipRRect(
                          child: Image.asset(AppImages.profilepic),
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
                        controller: fullName,
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
                        controller: emails,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 20,left: 15,bottom: 20), // add padding to adjust text
                            hintText: "srushti@gmail.com",
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
                        controller: date,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 20,left: 15,bottom: 20), // add padding to adjust text
                            hintText: "1-jan-1920",
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
                        controller: nationality,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 20,left: 15,bottom: 20), // add padding to adjust text
                            hintText: "India",
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
                        controller: language,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 20,left: 15,bottom: 20), // add padding to adjust text
                            hintText: "Gujarati",
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
                        controller: Currency,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 20,left: 15,bottom: 20), // add padding to adjust text
                            hintText: "GBP",
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
