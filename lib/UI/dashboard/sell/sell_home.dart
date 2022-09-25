import 'package:flutter/material.dart';
import 'package:mobx/common_widgets/app_bar_common.dart';







class SellHome extends StatelessWidget {
  const SellHome({Key? key}) : super(key: key);


  Widget appBarTitle(BuildContext context,String titleText,String subTitle){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(titleText,style:  Theme.of(context).textTheme.bodyText2!.copyWith(fontWeight: FontWeight.w600),),
        Text(subTitle,style:  Theme.of(context).textTheme.caption!.copyWith(fontSize: 10),),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarCommon(appBarTitle(context,"BRAND","Sell Your Phone- Select brand of your phone"),
          appbar: AppBar(), onTapCallback: (){},leadingImage: IconButton(
            icon: Icon(Icons.arrow_back),color: Colors.black,onPressed: ()=>Navigator.pop(context),),),
        body: Container(child: Center(child: Text("sell screen"),),));
  }
}
