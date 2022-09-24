import 'package:flutter/material.dart';
import 'package:mobx/UI/enter_otp.dart';
import 'package:mobx/UI/login_screen.dart';
import 'package:mobx/utils/constants.dart';
import 'package:mobx/utils/utilities.dart';







void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: "Gotham",
      textTheme: TextTheme(
        bodyText2: TextStyle(fontSize: 14.0, color: Utility.getColorFromHex(globalBlackColor)),
        caption: TextStyle(fontSize: 12.0,color:  Utility.getColorFromHex("#1A1A1A"),fontWeight: FontWeight.w400)
      )

    ),

    home: EnterOtp(),
  ));
}