import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:practice_demo_cwic/Dailog/custom_dialog.dart';
import 'package:practice_demo_cwic/Login/login_home_screen.dart';
import 'package:practice_demo_cwic/SignUp/additional_info_screen.dart';
import 'package:practice_demo_cwic/Utils/app_colors.dart';
import 'package:practice_demo_cwic/Utils/app_imges.dart';
import 'package:practice_demo_cwic/Utils/app_routes.dart';
import 'package:practice_demo_cwic/Widgets/custom_back_btn.dart';
import 'package:practice_demo_cwic/Widgets/custom_btn.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool signUpScreen = false;
  var formKey = GlobalKey<FormState>();
  var password = TextEditingController();

  File? imageFile = null;
  String? fileName;
  String? imageUrl;

  void submit() {
    final isValid = formKey.currentState?.validate();

    if (imageFile == null) {
      setState(() {
        CustomDialog()
            .show(context, "Error", "Please upload your profile picture");
      });
    } else if(isValid!){
      setState(() async {
        signUpScreen = false;
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setBool("logindata", signUpScreen);
        AppRoutes().nextScreen(context, AdditionalInfoScreen());
      });
    }
    /*if (isValid!) {
      setState(() async {
        if (imageFile == null) {
          CustomDialog()
              .show(context, "Error", "Please upload your profile picture");
        }else{
          signUpScreen = false;
          SharedPreferences prefs = await SharedPreferences.getInstance();
          prefs.setBool("logindata", signUpScreen);
          AppRoutes().nextScreen(context, AdditionalInfoScreen());
        }
      });
    }*/
    formKey.currentState?.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                CustomBackButton(
                  onPress: (){
                    AppRoutes().nextScreenCloseOther(context, LoginHomeScreen());
                  },
                  texts: '',
                  applogo: true,
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: [
                      Text('Create your account 🙌',style: TextStyle(fontSize: 30,color: AppColors.primary),),
                     SizedBox(height: 20,),
                      Stack(
                        children: [
                          SizedBox(
                            width: 90,
                            height: 90,
                            child: InkWell(
                                onTap: (){
                                  imagePickerDialog();
                                },
                                child: CircleAvatar(
                                radius: 45,
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
                                        : Image.asset(
                                      AppImages.profilepic,
                                      height: 120,
                                      width: 120,
                                      fit: BoxFit.cover,
                                    ) )),
                            ),
                          ),
                          Positioned(
                              bottom: 1,
                              right: 1,
                              child: Container(
                                height: 32,
                                width: 32,
                                  child: Icon(Icons.add_a_photo ,color: Colors.white,
                                      size: 20),
                                decoration: const BoxDecoration(
                                    color: AppColors.primary,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20))),
                              ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.greyColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: TextFormField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 20,left: 15,bottom: 20), // add padding to adjust text
                              hintText: "Full Name",
                              border: InputBorder.none,
                                errorStyle: TextStyle(color: AppColors.primary,fontSize: 16.0)
                            ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter a full name!';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: 15,),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.greyColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: TextFormField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 20,left: 15,bottom: 20), // add padding to adjust text
                              hintText: "Email",
                              border: InputBorder.none,
                                errorStyle: TextStyle(color: AppColors.primary,fontSize: 16.0)
                            ),
                          validator: (value) {
                            if (value!.isEmpty ||
                                !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(value!)) {
                              return 'Enter a valid email!';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: 15,),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.greyColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: TextFormField(
                          controller: password,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 20,left: 15,bottom: 20), // add padding to adjust text
                              hintText: "Password",
                              border: InputBorder.none,
                                errorStyle: TextStyle(color: AppColors.primary,fontSize: 16.0)
                            ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter a valid password!';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: 15,),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.greyColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: TextFormField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 20,left: 15,bottom: 20), // add padding to adjust text
                              hintText: "Confirm Password",
                              border: InputBorder.none,
                                errorStyle: TextStyle(color: AppColors.primary,fontSize: 16.0)
                            ),
                          validator: (value) {
                            if(value!.isEmpty)
                              return 'Enter a valid password!';
                            if(value != password.text)
                              return 'Not match password';
                            return null;
                          },
                        ),
                      ),

                      SizedBox(height: 15,),
                      SizedBox(
                        height: 55,
                        child: CustomButton(
                            height: 55,
                            buttonText: 'Sign Up',
                            primary: AppColors.primary,
                            txtColor: AppColors.white,
                            buttonBorder: AppColors.primary,
                            onPressed: (){
                              submit();
                              /*setState(() async {
                                signUpScreen = false;
                                SharedPreferences prefs = await SharedPreferences.getInstance();
                                prefs.setBool("logindata", signUpScreen);
                                AppRoutes().nextScreen(context, AdditionalInfoScreen());
                              });*/
                            }),
                      ),
                      SizedBox(height: 15,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15.0,left: 25,bottom: 15),
                          child: Row(
                            children: [
                              Image.asset(AppImages.facebook,height: 25,width: 25,color: AppColors.white,),
                              SizedBox(width: 20,),
                              Text('Continue with Facebook',style: TextStyle(fontSize: 18,color: AppColors.white),),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.blue,
                          borderRadius: BorderRadius.circular(14),
                      ),
                      ),
                      SizedBox(height: 15,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15.0,left: 25,bottom: 15),
                          child: Row(
                            children: [
                              Image.asset(AppImages.google,height: 25,width: 25,),
                              SizedBox(width: 25,),
                              Text('Continue with Google',style: TextStyle(fontSize: 18,),),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.greyColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15.0,left: 25,bottom: 15),
                          child: Row(
                            children: [
                              Image.asset(AppImages.apple,height: 25,width: 25,),
                              SizedBox(width: 25,),
                              Text('Continue with Apple',style: TextStyle(fontSize: 18,),),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.greyColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
