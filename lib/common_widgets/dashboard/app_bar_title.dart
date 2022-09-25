import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../../utils/utilities.dart';







class AppBarTitle extends StatelessWidget {

   final String? titleText;
  final String? subText;
  const AppBarTitle(this.titleText,this.subText,{Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(titleText!,style:  Theme.of(context).textTheme.bodyText2!.copyWith(fontWeight: FontWeight.w600),),
        SizedBox(height: 5,),
        Text(subText!,style:  Theme.of(context).textTheme.caption!.copyWith(fontSize: 10,color: Utility.getColorFromHex(globalSubTextGreyColor)),),
      ],
    );
  }
}
