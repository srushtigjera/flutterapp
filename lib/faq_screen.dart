import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_demo_cwic/Utils/app_colors.dart';
import 'package:practice_demo_cwic/Utils/app_routes.dart';
import 'package:practice_demo_cwic/Utils/app_string.dart';
import 'package:practice_demo_cwic/Widgets/custom_back_btn.dart';

class FAQs extends StatefulWidget {
  const FAQs({Key? key}) : super(key: key);

  @override
  _FAQsState createState() => _FAQsState();
}

class _FAQsState extends State<FAQs> {
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
                    texts: 'FAQs',
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0,left: 20,top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Do I need to be a student?',style: TextStyle(fontSize: 25,color: AppColors.primary),),
                    SizedBox(height: 15,),
                    Text(AppString.faq1,style: TextStyle(fontSize: 18),),
                    SizedBox(height: 30,),
                    Text('How do I book a room?',style: TextStyle(fontSize: 25,color: AppColors.primary),),
                    SizedBox(height: 15,),
                    Text(AppString.faq2,style: TextStyle(fontSize: 18),),
                    SizedBox(height: 30,),
                    Text('Can I arrange a tour of the property before I book?',style: TextStyle(fontSize: 25,color: AppColors.primary),),
                    SizedBox(height: 15,),
                    Text(AppString.faq3,style: TextStyle(fontSize: 18),),
                    SizedBox(height: 30,),
                    Text('Does CWIC charge any fees?',style: TextStyle(fontSize: 25,color: AppColors.primary),),
                    SizedBox(height: 15,),
                    Text(AppString.faq4,style: TextStyle(fontSize: 18),),
                    SizedBox(height: 30,),
                    Text('Who do I pay my deposit and rent to?',style: TextStyle(fontSize: 25,color: AppColors.primary),),
                    SizedBox(height: 15,),
                    Text(AppString.faq5,style: TextStyle(fontSize: 18),),
                    SizedBox(height: 30,),
                    Text('Can I view listings on your website?',style: TextStyle(fontSize: 25,color: AppColors.primary),),
                    SizedBox(height: 15,),
                    Text(AppString.faq6,style: TextStyle(fontSize: 18),),
                    SizedBox(height: 30,),
                    Text('How do I become a CWIC Brand Ambassador?',style: TextStyle(fontSize: 25,color: AppColors.primary),),
                    SizedBox(height: 15,),
                    Text(AppString.faq7,style: TextStyle(fontSize: 18),),
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
