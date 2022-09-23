import 'package:flutter/material.dart';







class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("LOGO"),
          Text("SELL | PURCHASE | REPAIR | INSURANCE"),
          Text("Please enter your phone number"),

        ],
      ),
    );
  }
}
