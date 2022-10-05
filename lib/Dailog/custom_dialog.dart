import 'package:flutter/material.dart';
import 'package:practice_demo_cwic/Utils/app_colors.dart';
import 'package:practice_demo_cwic/Utils/app_routes.dart';

class CustomDialog{
  show(BuildContext context,title,subTitle) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(7.0))),
            contentPadding: const EdgeInsets.only(top: 10.0),
            content: SizedBox(
              width: 300.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      // const SizedBox(width: 10.0,),
                      // Image.asset(AppImages.error,height: 28,width: 28,),
                      const SizedBox(width: 20.0,),
                      Text(
                        title, style: TextStyle(fontSize: 18,color: AppColors.blackColor.withOpacity(0.7)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0,),
                  Divider(
                    color: Colors.grey.withOpacity(0.2),
                    height: 1.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      subTitle.toString().split('] ').last,textAlign: TextAlign.start, style: TextStyle(fontSize: 14,color: AppColors.blackColor.withOpacity(0.5)),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      AppRoutes.dismissAlert(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.only(top: 13.0, bottom: 13.0),
                      decoration: const BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(7.0),
                            bottomRight: Radius.circular(7.0)),
                      ),
                      child: Text(
                        "Ok",
                        style: TextStyle(fontSize: 16,color: AppColors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}