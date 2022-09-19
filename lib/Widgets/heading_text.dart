import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_demo_cwic/Utils/app_colors.dart';

class HeadingText extends StatefulWidget {
  String? title;
  HeadingText({Key? key, this.title}) : super(key: key);

  @override
  _HeadingTextState createState() => _HeadingTextState();
}

class _HeadingTextState extends State<HeadingText> {
  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;
    return Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: sizeHeight * 0.05),
              SizedBox(
                child: Text(widget.title!,style: TextStyle(fontSize: 25,color: AppColors.primary),),
              ),
              SizedBox(height: sizeHeight * 0.05),
            ],
          ),
        ),
      );
  }
}
