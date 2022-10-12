import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:practice_demo_cwic/Utils/app_colors.dart';
import 'package:practice_demo_cwic/Utils/app_routes.dart';
import 'package:practice_demo_cwic/Widgets/custom_back_btn.dart';
import 'package:practice_demo_cwic/Widgets/custom_btn.dart';
import 'package:practice_demo_cwic/Widgets/heading_text.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {

  var newPassword = TextEditingController();
  var oldPassword = TextEditingController();
  Dio dio = Dio();
  var formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    changePassword();
    super.initState();
  }

  void changePassword() async {
    SharedPreferences pref = await SharedPreferences.getInstance() ;

    var userId = pref.getString('userId');
    var id = pref.getString('id');
    var token = pref.getString('token');

    var param = {
      "password" : '654321',
      "new_password": '123456',
      "id": id,
      "admin_id": '',
      "user_id": userId,
      "agent_id": '',
      "token": token
    };

    var url = 'http://3.142.18.201/cwic/api/user/change/password';
    var changePasswordData = await dio.post(url , data: param ,options: Options(headers: {
      'Authorization': 'Bearer $token',
    }));
    print("changeEmail======${changePasswordData.data}");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomBackButton(
                      onPress: (){
                          AppRoutes.pop(context);
                      },
                      texts: '',
                      applogo: true,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    HeadingText(
                      title: 'Change Password 🙌',
                    ),
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
                          controller: oldPassword,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 20,left: 15,bottom: 20), // add padding to adjust text
                              hintText: "Old Password",
                              border: InputBorder.none,
                            )),
                      ),

                      SizedBox(height: 15,),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.greyColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: TextFormField(
                          controller: newPassword,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 20,left: 15,bottom: 20), // add padding to adjust text
                              hintText: "New Password",
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
                            if(value != newPassword.text)
                              return 'Not match password';
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: 35,),
                      SizedBox(
                        height: 55,
                        child: CustomButton(
                            height: 55,
                            buttonText: 'Change Password',
                            primary: AppColors.primary,
                            txtColor: AppColors.white,
                            buttonBorder: AppColors.primary,
                            onPressed: (){
                              setState(() {
                                //AppRoutes().nextScreen(context, LoginScreen());
                              });
                            }),
                      ),

                      /*SizedBox(
                        height: 10,
                      ),*/
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
