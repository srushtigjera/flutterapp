import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_demo_cwic/Utils/app_colors.dart';
import 'package:practice_demo_cwic/Utils/app_imges.dart';
import 'package:practice_demo_cwic/Utils/app_routes.dart';
import 'package:practice_demo_cwic/Widgets/custom_back_btn.dart';
import 'package:practice_demo_cwic/Widgets/custom_btn.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  bool checkParant = false;
  bool checkStudent = false;
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
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Flexible(
                      child: Transform.scale(
                        scale: 1.3,
                        child: Checkbox(
                          side: BorderSide(
                            color: AppColors.primary,
                            width: 1
                          ),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                            value:this.checkParant,
                            onChanged: (bool? value){
                          setState(() {
                            this.checkParant = value!;
                          }
                          );
                            }),
                      ),
                    ),
                    Text("I'm a Parent/Guardian"),

                    SizedBox(width: 10,),
                    Flexible(
                      child: Transform.scale(
                        scale: 1.3,
                        child: Checkbox(
                          side: BorderSide(
                            color: AppColors.primary,
                            width: 1
                          ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                            value: this.checkStudent, 
                            onChanged: (bool? value){
                              setState(() {
                                this.checkStudent = value!;
                              });
                            }),
                      ),
                    ),
                    Text("I'm a Student")
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
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 20,left: 15,bottom: 20), // add padding to adjust text
                            hintText: "srushti",
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
