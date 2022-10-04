import 'package:flutter/material.dart';
import 'package:mobx/UI/auth/welcome_screen.dart';
import 'package:mobx/utils/constants/constants_colors.dart';
import 'package:mobx/utils/constants/strings.dart';
import 'package:mobx/utils/utilities.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5),(){
      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> WelcomeScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        color: Utility.getColorFromHex(globalOrangeColor),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/mobexwhite.png',
                width: MediaQuery.of(context).size.width*0.30,),
              verticalSpacing(heightInDouble: 0.01, context: context),
              Text(
                Strings.splash_sub_title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}