import 'package:flutter/material.dart';
import 'package:mobx/common_widgets/app_bar_common.dart';
import 'package:mobx/common_widgets/dashboard/app_bar_title.dart';







class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarCommon(Text("PROFILE",style:  Theme.of(context).textTheme.bodyText2!.copyWith(fontWeight: FontWeight.w600)),
          appbar: AppBar(), onTapCallback: (){},leadingImage: IconButton(
            padding: EdgeInsets.zero,
            constraints: BoxConstraints(),
            icon: Icon(Icons.arrow_back),color: Colors.black,onPressed: ()=>Navigator.pop(context),),),
        body: Container(child: Center(child: Text("profile screen"),),));
  }
}
