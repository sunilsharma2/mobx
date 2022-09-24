import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobx/common_widgets/app_bar_common.dart';
import 'package:mobx/common_widgets/app_button.dart';
import 'package:mobx/common_widgets/common_textfield_style.dart';
import 'package:mobx/utils/utilities.dart';







class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
static bool checkedValue = false;



  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBarCommon("LOGIN", appBar: AppBar(), onTapCallback: (){}),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(15),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("LOGO"),
                Text("SELL | PURCHASE | REPAIR | INSURANCE",
                  style: Theme.of(context).textTheme.caption!.copyWith(fontSize: 14.0),
                textAlign: TextAlign.center,),
                SizedBox(height: getCurrentScreenHeight(context)/7,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Please enter your phone number",
                    style: Theme.of(context).textTheme.caption,),
                ),
                SizedBox(height: getCurrentScreenHeight(context)*0.02,),
                TextField(
                  inputFormatters: [LengthLimitingTextInputFormatter(10),],
                  style: Theme.of(context).textTheme.bodyText2,
                  keyboardType: TextInputType.phone,
                  decoration: CommonStyle.textFieldStyle(context),
                ),
                CheckboxListTile(
                  title: RichText(text: TextSpan(
                    children: [
                      TextSpan(text: "I agree to the",style: Theme.of(context).textTheme.caption),
                      TextSpan(text: "Terms & Conditions",style:
                      Theme.of(context).textTheme.caption!.copyWith(color: Utility.getColorFromHex("#1D4AE7"))),
                    ]
                  )
                  ), //    <-- label
                  value: checkedValue,
                    contentPadding: EdgeInsets.zero,
                  onChanged: (newValue) {  },
                  controlAffinity: ListTileControlAffinity.leading
                ),
                SizedBox(height: getCurrentScreenHeight(context)*0.03,),
                AppButton(onTap: (){}, text: "CONTINUE")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
