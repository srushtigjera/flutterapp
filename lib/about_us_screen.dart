import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_demo_cwic/Utils/app_colors.dart';
import 'package:practice_demo_cwic/Utils/app_routes.dart';
import 'package:practice_demo_cwic/Utils/app_string.dart';
import 'package:practice_demo_cwic/Widgets/custom_back_btn.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                    texts: 'About us',
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(right: 20,left: 20,top: 25),
                child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('About Us',style: TextStyle(fontSize: 25,color: AppColors.primary),),
                    SizedBox(height: 15,),
                    Text(AppString.aboutText1,style: TextStyle(fontSize: 18),),
                    SizedBox(height: 20,),
                    Text(AppString.aboutText2 ,style: TextStyle(fontSize: 18),),
                    SizedBox(height: 20,),
                    Text(AppString.aboutText3 ,style: TextStyle(fontSize: 18),),
                    SizedBox(height: 40,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
