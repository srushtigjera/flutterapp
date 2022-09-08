import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRoutes{

 static void pop(BuildContext context){
   Navigator.pop(context);
 }

 static void popWithData(BuildContext context,data){
   Navigator.pop(context,data);
 }

 static void dismissAlert(context){
   Navigator.pop(context);
 }

 void nextScreen(context , page){
   Navigator.push(context, MaterialPageRoute(builder: (context) => page),);
 }

 void nextSceenReplace(context , page){
   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => page),);
 }

 void nextScreenCloseOther(context,page){
   Navigator.pushAndRemoveUntil(context, page, (route) => false);
 }

 void nextScreenPlaceName(context ,page){
   Navigator.pushReplacementNamed(context, page);
 }

 void nextAndRemoveUtils(context , page){
   Navigator.pushAndRemoveUntil(context, page, (route) => false);
 }

 void nextScreenCallback (context, page, Function(String result) handler) async {
   final result =  await Navigator.of(context, rootNavigator: true).push(MaterialPageRoute( builder: (context) => page,));
   handler(result);
 }

}