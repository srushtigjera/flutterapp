import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_demo_cwic/Utils/app_colors.dart';
import 'package:practice_demo_cwic/Utils/app_routes.dart';
import 'package:practice_demo_cwic/Utils/app_string.dart';
import 'package:practice_demo_cwic/Widgets/custom_back_btn.dart';

class BrandAmbassadors extends StatefulWidget {
  const BrandAmbassadors({Key? key}) : super(key: key);

  @override
  _BrandAmbassadorsState createState() => _BrandAmbassadorsState();
}

class _BrandAmbassadorsState extends State<BrandAmbassadors> {
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
                    texts: 'Brand Ambassadors',
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20,top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('What is a Brand',style: TextStyle(fontSize: 25,color: AppColors.primary),),
                    SizedBox(height: 5,),
                    Text('Ambassador?',style: TextStyle(fontSize: 25,color: AppColors.primary),),
                    SizedBox(height: 15,),
                    Text(AppString.whatIsBrandAM,style: TextStyle(fontSize: 18),),
                    SizedBox(height: 30,),
                    Text('What dose a Brand',style: TextStyle(fontSize: 25,color: AppColors.primary),),
                    SizedBox(height: 5,),
                    Text('Ambassador do?',style: TextStyle(fontSize: 25,color: AppColors.primary),),
                    SizedBox(height: 15,),
                    Text(AppString.whatIsBrandAM1,style: TextStyle(fontSize: 18),),
                    SizedBox(height: 30,),
                    Text('What do i need to become an',style: TextStyle(fontSize: 24,color: AppColors.primary),),
                    SizedBox(height: 5,),
                    Text('brand Ambassador?',style: TextStyle(fontSize: 24,color: AppColors.primary),),
                    SizedBox(height: 15,),
                    Text(AppString.whatIsBrandAM2,style: TextStyle(fontSize: 18),),
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
