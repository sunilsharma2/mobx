import 'package:flutter/material.dart';
import 'package:mobx/utils/constants.dart';
import 'package:mobx/utils/utilities.dart';





class CommonStyle{
  static InputDecoration textFieldStyle(BuildContext context,{Widget? dropDownIcon,String? labelText}) {return  InputDecoration(
     prefixIcon: Text(" +91",style: Theme.of(context).textTheme.bodyText2,),
      prefixIconConstraints: BoxConstraints(
        minWidth: 30,
        minHeight: 15,
      ),
      hintText:  labelText ?? "",
      hintStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Utility.getColorFromHex("#090909")),
      contentPadding: const EdgeInsets.all(8),
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Colors.red)
      ),
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color:  Colors.red)
      ),
      focusedBorder:  OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: Utility.getColorFromHex(globalOrangeColor))
      ),
      enabledBorder:  OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))
      ,borderSide: BorderSide(color: Utility.getColorFromHex(globalOrangeColor))
      )
  );}
}