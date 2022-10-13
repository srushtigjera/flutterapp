import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_demo_cwic/Dailog/custom_dialog.dart';
import 'package:practice_demo_cwic/Utils/app_colors.dart';
import 'package:practice_demo_cwic/Utils/app_routes.dart';
import 'package:practice_demo_cwic/Widgets/custom_back_btn.dart';
import 'package:practice_demo_cwic/Widgets/custom_btn.dart';
import 'package:practice_demo_cwic/Widgets/heading_text.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChangeEmailScreen extends StatefulWidget {
  const ChangeEmailScreen({Key? key}) : super(key: key);

  @override
  _ChangeEmailScreenState createState() => _ChangeEmailScreenState();
}

class _ChangeEmailScreenState extends State<ChangeEmailScreen> {

  var newEmail = TextEditingController();
  var oldEmail = TextEditingController();
  Dio dio = Dio();
  var formKey = GlobalKey<FormState>();

  void changeEmail() async {
    SharedPreferences pref = await SharedPreferences.getInstance() ;

    var userId = pref.getString('userId');
    var id = pref.getString('id');
    var token = pref.getString('token');

    var param = {
      "old_email" : oldEmail.text,
      "new_email": newEmail.text,
      "apiParameters":{
        "id": id,
        "admin_id": '',
        "user_id": userId,
        "agent_id": '',
        "token": token
      }
    };

    var url = 'http://3.142.18.201/cwic/api/user/change/email';
    var changeEmailData = await dio.post(url , data: param ,options: Options(headers: {
      'Authorization': 'Bearer $token',
    }));

    var changeEmailResult = changeEmailData.data;
    var changeEmailStatus = changeEmailResult["status"];
    var changeEmailMsg = changeEmailResult["message"];

    if(changeEmailStatus == "Success"){
      AppRoutes.pop(context);
    }else if(changeEmailStatus == "Error"){
      if(changeEmailMsg == "Invalid user email !"){
        setState(() {
          CustomDialog()
              .show(context, "Error", "Invalid Email");
        });
      }
    }
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
                Row(
                  children: [
                    CustomBackButton(
                      onPress: (){
                        AppRoutes.pop(context);
                      },
                      texts: '',
                      applogo: true,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    HeadingText(title: 'Change Email 🙌'),
                  ],
                ),
                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                       Container(
                        decoration: BoxDecoration(
                          color: AppColors.greyColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: TextFormField(
                          controller: oldEmail,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 20,left: 15,bottom: 20), // add padding to adjust text
                              hintText: "Old Email",
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
                          controller: newEmail,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 20,left: 15,bottom: 20), // add padding to adjust text
                              hintText: "New Email",
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
                      SizedBox(height: 35,),
                      SizedBox(
                        height: 55,
                        child: CustomButton(
                            height: 55,
                            buttonText: 'Change Email',
                            primary: AppColors.primary,
                            txtColor: AppColors.white,
                            buttonBorder: AppColors.primary,
                            onPressed: (){
                              final isValid = formKey.currentState?.validate();
                              if (isValid!) {
                                setState(() {
                                  changeEmail();
                                });
                              }
                              formKey.currentState?.save();
                            }),
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
}
