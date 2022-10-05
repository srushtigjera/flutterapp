import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:practice_demo_cwic/Dailog/custom_dialog.dart';
import 'package:practice_demo_cwic/Home/home_tab.dart';
import 'package:practice_demo_cwic/Models/currency_model.dart';
import 'package:practice_demo_cwic/Utils/app_colors.dart';
import 'package:practice_demo_cwic/Utils/app_routes.dart';
import 'package:practice_demo_cwic/Utils/list_data.dart';
import 'package:practice_demo_cwic/Widgets/custom_back_btn.dart';
import 'package:practice_demo_cwic/Widgets/custom_btn.dart';
import 'package:practice_demo_cwic/Widgets/heading_text.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AdditionalInfoScreen extends StatefulWidget {
  const AdditionalInfoScreen({Key? key}) : super(key: key);

  @override
  _AdditionalInfoScreenState createState() => _AdditionalInfoScreenState();
}

class _AdditionalInfoScreenState extends State<AdditionalInfoScreen> {

  bool isParentOrGuardian = false;
  bool isStudent = false;
  bool homeScreen = false;
  var formKey = GlobalKey<FormState>();

  var dateInput = TextEditingController();
  String? strDob, strLang, strUnivCollege, strCurrency = 'GBP (£)';

  var strNationality;

  void submit() {
    final isValid = formKey.currentState?.validate();

    if (isParentOrGuardian == false && isStudent == false) {
      setState(() {
        CustomDialog()
            .show(context, "Error", "Please select Parent/Guardian or Student ");
      });
    } else if(isValid!){
      setState(() async {
        homeScreen = true;
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setBool("logindata", homeScreen);
        AppRoutes().nextScreen(context, HomeTab());
      });
    }
    formKey.currentState?.save();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Form(
                key: formKey,
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
                               // checkColor: AppColors.primary,
                                //activeColor: AppColors.primary,
                                side: BorderSide(
                                    color: AppColors.primary
                                ),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular((6.0))),
                                value: isParentOrGuardian,
                                onChanged: (data){
                                  setState(() {
                                    isParentOrGuardian = data!;
                                    print(isParentOrGuardian);
                                    isStudent = false;
                                  });
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
                                value: isStudent,
                                onChanged: (data){
                                print (data);
                                setState(() {
                                  isStudent = data!;
                                  isParentOrGuardian = false;
                                  print(isStudent);
                                });
                                }
                                ),
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
                            child: TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Select date';
                                }
                                return null;
                              },
                              controller: dateInput,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(top: 20,left: 15,bottom: 20), // add padding to adjust text
                                hintText: "What is your date of birth?",
                                border: InputBorder.none,
                                  errorStyle: TextStyle(color: AppColors.primary,fontSize: 16.0)
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
                                  DateFormat('dd-MMM-yyyy').format(pickedDate);
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
                              validator: (value) {
                                if (value == null) {
                                  return 'Select nationality';
                                }
                                return null;
                              },
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

                                //  borderRadius: BorderRadius.circular(14),
                                contentPadding: EdgeInsets.fromLTRB(20, 5, 7, 7),
                                border: InputBorder.none,
                                filled: true,
                                hintText: "What is your nationality?",
                                  errorStyle: TextStyle(color: AppColors.primary,fontSize: 16.0)
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
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Enter a valid languages!';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(top: 20,left: 15,bottom: 20), // add padding to adjust text
                                  hintText: "What languages do you speak?",
                                  border: InputBorder.none,
                                    errorStyle: TextStyle(color: AppColors.primary,fontSize: 16.0)
                                )),
                          ),
                          SizedBox(height: 15,),
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.greyColor.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: TextFormField(

                                onTap: (){
                                  setState(() {
                                    showCity();
                                  });
                                },
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(top: 20,left: 15,bottom: 20), // add padding to adjust text
                                  hintText: "What cities are you interested in?",
                                  border: InputBorder.none,
                                )),
                          ),
                          SizedBox(height: 15,),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(14),
                            child: DropdownSearch<CurrencyModel>(
                              mode: Mode.BOTTOM_SHEET,
                              items: currencyList,
                              itemAsString: (CurrencyModel? c) =>
                              c!.currencycode!.toString() +
                                  " " +
                                  "(${c.currencysymbol!.toString()})",
                              onChanged: (CurrencyModel? c) {
                                setState(() {
                                  strCurrency = c!.currencycode!.toString() +
                                      " " +
                                      "(${c.currencysymbol!.toString()})";
                                  print(strCurrency);
                                });
                              },
                              dropDownButton: Container(),
                              dropdownSearchDecoration: InputDecoration(
                                  contentPadding:
                                  EdgeInsets.fromLTRB(20, 5, 7, 5),
                                  border: InputBorder.none,
                                  filled: true,
                                  hintText: strCurrency,
                                  hintStyle: TextStyle(color: AppColors.blackColor)
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
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.15,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                child: CustomButton(
                  buttonText: 'Create Account',
                  height: 55,
                  buttonBorder: Colors.transparent,
                  primary: AppColors.primary,
                  txtColor: Colors.white,
                  onPressed: () {
                    submit();
                  },
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
   showCity() {
    return showDialog(
        context: context,
        builder: (BuildContext context)
        {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            contentPadding: const EdgeInsets.only(top: 10.0),
            content: Container(
              width: 300.0,
              // height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "Interested Cities",),
                    ],
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  const Divider(
                    color: AppColors.lightGreyColor,
                    height: 1.0,
                  ),
                  ListView.builder(
                      itemCount: cityList.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding:
                            const EdgeInsets.only(left: 13, right: 0),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                //Text(cityList.toString())
                              ],
                            ),
                          );
                      }),
                  InkWell(
                    onTap: () {
                      setState(() {
                        AppRoutes.dismissAlert(context);
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.all(15),
                      padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        "Done",
                        style: TextStyle(color: AppColors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
    );
  }
}
