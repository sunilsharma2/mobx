import 'package:flutter/material.dart';
import 'package:mobx/common_widgets/globally_common/app_bar_common.dart';
import 'package:mobx/common_widgets/dashboard/app_bar_title.dart';
import 'package:mobx/utils/constants.dart';
import 'package:mobx/utils/utilities.dart';







class SellHome extends StatelessWidget {
  const SellHome({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarCommon(AppBarTitle("BRAND","Sell Your Phone- Select brand of your phone"),
          appbar: AppBar(), onTapCallback: (){},leadingImage: Image.asset("assets/images/back_arrow.png"),),
        body: Container(child: Center(child: Text("sell screen"),),));
  }
}
