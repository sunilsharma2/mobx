import 'package:flutter/material.dart';
import 'package:mobx/UI/auth/enter_otp.dart';
import 'package:mobx/UI/auth/login_screen.dart';
import 'package:mobx/UI/dashboard/dashboard_screen.dart';
import 'package:mobx/provider/dashboard/dashboard_provider.dart';
import 'package:mobx/utils/constants.dart';
import 'package:mobx/utils/utilities.dart';
import 'package:provider/provider.dart';






void main(){
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => DashboardProvider())
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: "Gotham",
          textTheme: TextTheme(
              bodyText2: TextStyle(fontSize: 14.0, color: Utility.getColorFromHex(globalBlackColor)),
              caption: TextStyle(fontSize: 12.0,color:  Utility.getColorFromHex("#1A1A1A"),fontWeight: FontWeight.w400)
          )

      ),

      home: DashboardScreen(),
    ),

  ));
}