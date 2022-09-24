import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobx/common_widgets/app_bar_common.dart';
import 'package:mobx/common_widgets/app_button.dart';
import 'package:mobx/common_widgets/common_textfield_style.dart';
import 'package:mobx/utils/constants.dart';
import 'package:mobx/utils/utilities.dart';







class EnterOtp extends StatelessWidget {
  const EnterOtp({Key? key}) : super(key: key);
  static bool checkedValue = false;



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBarCommon("ENTER OTP", appBar: AppBar(), onTapCallback: (){}),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: getCurrentScreenHeight(context)*0.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(text: TextSpan(
                      children: [
                        TextSpan(text: "We’ve sent an OTP on",style: Theme.of(context).textTheme.caption),
                        TextSpan(text: " +91-8080808080 ",style:
                        Theme.of(context).textTheme.caption!.copyWith(fontWeight: FontWeight.w600)),
                      ]
                  )
                  ),
                  Text("Change",style:  Theme.of(context).textTheme.caption!.copyWith(color: Utility.getColorFromHex(globalOrangeColor)),)
                ],
              ),

              SizedBox(height: getCurrentScreenHeight(context)*0.02,),
              TextField(
                inputFormatters: [LengthLimitingTextInputFormatter(10),],
                style: Theme.of(context).textTheme.bodyText2,
                keyboardType: TextInputType.phone,
                decoration: CommonStyle.textFieldStyle(context),
              ),

              SizedBox(height: getCurrentScreenHeight(context)*0.03,),
              Align(
                  alignment: Alignment.center,
                  child: Text("Resent OTP | 00:20",style:  Theme.of(context).textTheme.caption!.copyWith(color: Utility.getColorFromHex("#5F5F5F")),)),
              SizedBox(height: getCurrentScreenHeight(context)*0.03,),
              AppButton(onTap: (){}, text: "VERIFY OTP")
            ],
          ),
        ),
      ),
    );
  }
}
