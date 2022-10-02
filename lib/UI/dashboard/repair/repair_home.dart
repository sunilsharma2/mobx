import 'package:flutter/material.dart';
import 'package:mobx/common_widgets/globally_common/app_bar_common.dart';
import 'package:mobx/common_widgets/dashboard/app_bar_title.dart';







class RepairHome extends StatelessWidget {
  const RepairHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarCommon(AppBarTitle("BRAND","Repair Your Phone- Select brand of your phone"),
          appbar: AppBar(), onTapCallback: (){},leadingImage: IconButton(
            padding: EdgeInsets.zero,
            constraints: BoxConstraints(),
            icon: Icon(Icons.arrow_back),color: Colors.black,onPressed: ()=>Navigator.pop(context),),),
        body: Container(child: Center(child: Text("repair screen"),),));
  }
}
