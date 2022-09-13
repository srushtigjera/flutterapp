import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:practice_demo_cwic/Utils/app_colors.dart';
import 'package:practice_demo_cwic/Utils/app_routes.dart';
import 'package:practice_demo_cwic/Utils/list_data.dart';
import 'package:practice_demo_cwic/Widgets/custom_back_btn.dart';
import 'package:practice_demo_cwic/Widgets/heading_text.dart';

class AdditionalInfoScreen extends StatefulWidget {
  const AdditionalInfoScreen({Key? key}) : super(key: key);

  @override
  _AdditionalInfoScreenState createState() => _AdditionalInfoScreenState();
}

class _AdditionalInfoScreenState extends State<AdditionalInfoScreen> {

  bool isParentOrGuardian = false;

  var dateInput = TextEditingController();
  var strNationality;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Visibility(
                visible: false,
                child: CustomBackButton(
                  onPress: (){
                    AppRoutes.pop(context);
                  },
                  texts: '',
                  applogo: false,
                ),
              ),
              HeadingText(title:'Just a few more details..'),
                    Padding(
                      padding: const EdgeInsets.only(right: 11,left: 11),
                      child: Row(
                        children: [
                          Transform.scale(
                            scale: 1.2,
                            child: Checkbox(
                                side: BorderSide(
                                  color: AppColors.primary
                                ),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular((6.0))),
                                value: isParentOrGuardian,
                                onChanged: (data){

                                }),
                          ),
                          Text("I'm a Parent/Guardian",style: TextStyle(color: AppColors.blackColor,fontSize: 15),),

                          Transform.scale(
                            scale: 1.2,
                            child: Checkbox(
                                side: BorderSide(
                                    color: AppColors.primary
                                ),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular((6.0))),
                                value: isParentOrGuardian,
                                onChanged: (data){

                                }),
                          ),
                           Text("I'm a Student",style: TextStyle(color: AppColors.blackColor,fontSize: 15),)
                        ],
                      ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.greyColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: TextFormField(controller: dateInput,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 20,left: 15,bottom: 20), // add padding to adjust text
                            hintText: "What is your date of birth?",
                            border: InputBorder.none,
                          ),
                        onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                              context: context,
                          initialDate: DateTime.now(),
                           firstDate: DateTime(1950),

                         lastDate: DateTime(2400));

                     if (pickedDate != null) {
                          print(pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                      String formattedDate =
                            DateFormat('dd-MM-yyyy').format(pickedDate);
                            print(formattedDate); //formatted date output using intl package =>  2021-03-16
                       setState(() {
                            dateInput.text =
                         formattedDate; //set output date to TextField value.
                       });
                      } else {}
                     },
                      ),
                    ),
                    SizedBox(height: 15,),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: DropdownSearch<String>(
                        mode: Mode.DIALOG,
                        items: nationality,
                        onChanged: (val) {
                          setState(() {
                            strNationality = val;
                            print(strNationality);
                          });
                        },
                        showSearchBox: true,
                        dropDownButton: Container(),
                        dropdownSearchDecoration: InputDecoration(
                          contentPadding:
                          EdgeInsets.fromLTRB(20, 5, 7, 5),
                          border: InputBorder.none,
                          filled: true,
                          hintText: "What is your nationality?",

                        ),
                        popupElevation: 1,
                        // popupBackgroundColor: AppColors.lightGreyColor,
                        popupShape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5.0),
                          ),
                        ),
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
                            hintText: "What languages do you speak?",
                            border: InputBorder.none,
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
