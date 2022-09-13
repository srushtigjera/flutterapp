import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_demo_cwic/Utils/app_colors.dart';
import 'package:practice_demo_cwic/Utils/app_imges.dart';

class CustomBackButton extends StatefulWidget {
  Function()? onPress;
  String? texts;
  bool applogo;

  CustomBackButton({Key? key, this.onPress, this.texts, this.applogo = false}) : super(key: key) {
  }
  @override
  _CustomBackButtonState createState() => _CustomBackButtonState();
}

class _CustomBackButtonState extends State<CustomBackButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 10,top: 10),
        child: Row(
          children: [
            InkWell(
              splashFactory: NoSplash.splashFactory,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: widget.onPress,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  color: AppColors.greyColor.withOpacity(0.2),
                  width: 44,
                  height: 44,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset(AppImages.backArrow),
                  ),
                ),
              ),
            ),
            SizedBox(width: 20,),
            Text(widget.texts!,style: TextStyle(fontSize: 25,color: AppColors.primary),),
            Visibility(
              visible: widget.applogo,
              child: Row(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width * 0.18,),
                  SizedBox(
                      width: MediaQuery.of(context).size.width / 4,
                  child: Image.asset(AppImages.logo,color: AppColors.primary,),
                  )
                ],
              ),
            )
          ],
        ),
      );
  }
}
