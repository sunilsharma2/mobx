import 'package:flutter/material.dart';
import 'package:mobx/utils/constants/constants_colors.dart';
import 'package:mobx/utils/utilities.dart';








class HorizontalCircleList extends StatelessWidget {
  const HorizontalCircleList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(right: 3,left: 3),
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Utility.getColorFromHex(globalGreyColor))),
          child: Image.asset("assets/images/iphone_mini.png"),
        ),
        Text("iphone 13",style: Theme.of(context).textTheme.caption!.copyWith(fontSize: 10),)
      ],
    );
  }
}
