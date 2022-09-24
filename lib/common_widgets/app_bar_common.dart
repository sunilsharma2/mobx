import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mobx/utils/constants.dart';
import 'package:mobx/utils/utilities.dart';




class AppBarCommon extends StatelessWidget implements PreferredSizeWidget{

  final String titleText;
  final AppBar appBar;
  final String leadingImage;
  final VoidCallback onTapCallback;

  const AppBarCommon(this.titleText,{Key? key,required this.appBar ,
    this.leadingImage = "assets/images/logo_design.png", required this.onTapCallback }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottom: PreferredSize(
          child: Container(
            color: Utility.getColorFromHex(globalGreyColor),
            height: 0.5,
          ),
          preferredSize: Size.fromHeight(4.0)),
      elevation: 0,
      backgroundColor: Utility.getColorFromHex(globalWhiteColor).withOpacity(0.8),
      title: Text(titleText,style:  Theme.of(context).textTheme.bodyText2!.copyWith(fontWeight: FontWeight.w600),),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);

}
