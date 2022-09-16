import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_demo_cwic/Utils/app_routes.dart';
import 'package:practice_demo_cwic/Widgets/custom_back_btn.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomBackButton(
                    onPress: (){
                      AppRoutes.pop(context);
                    },
                    texts: 'Notifications 📲',
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
