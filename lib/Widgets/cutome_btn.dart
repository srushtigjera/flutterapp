import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomeButton extends StatefulWidget {

  String? buttonText;
  Function() onPressed;
  double? height;
  Color? txtColor;
  Color? primary;
  Color? buttonBorder;

  CustomeButton({Key? key, this.buttonText, this.txtColor, this.primary, this.height, this.buttonBorder, required this.onPressed()}) : super(key: key);

  @override
  _CustomeButtonState createState() => _CustomeButtonState();
}

class _CustomeButtonState extends State<CustomeButton> {
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        height: widget.height,
        width: double.infinity,
        child: ElevatedButton(
        onPressed: () {  },
        child: Text(widget.buttonText!,style: TextStyle(fontSize: 18,color: widget.txtColor),),
          style: ElevatedButton.styleFrom(
            primary: widget.primary,
              elevation: 0.0,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
                side: BorderSide(color: widget.buttonBorder!)
          )
          ),
        ),
      );
  }
}
