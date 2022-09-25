import 'package:flutter/material.dart';
import 'package:mobx/common_widgets/app_bar_common.dart';
import 'package:mobx/common_widgets/dashboard/app_bar_title.dart';
import 'package:mobx/utils/constants.dart';
import 'package:mobx/utils/utilities.dart';







class SellHome extends StatelessWidget {
  const SellHome({Key? key}) : super(key: key);


  Widget appBarTitle(BuildContext context,String titleText,String subTitle){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(titleText,style:  Theme.of(context).textTheme.bodyText2!.copyWith(fontWeight: FontWeight.w600),),
        SizedBox(height: 5,),
        Text(subTitle,style:  Theme.of(context).textTheme.caption!.copyWith(fontSize: 10,color: Utility.getColorFromHex(globalSubTextGreyColor)),),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarCommon(AppBarTitle("BRAND","Sell Your Phone- Select brand of your phone"),
          appbar: AppBar(), onTapCallback: (){},leadingImage: IconButton(
            padding: EdgeInsets.zero,
            constraints: BoxConstraints(),
            icon: Icon(Icons.arrow_back),color: Colors.black,onPressed: ()=>Navigator.pop(context),),),
        body: Container(child: Center(child: Text("sell screen"),),));
  }
}
