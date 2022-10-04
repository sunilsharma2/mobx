import 'package:flutter/material.dart';
import 'package:mobx/common_widgets/globally_common/app_bar_common.dart';

import '../../../common_widgets/dashboard/app_bar_title.dart';
class ProductListWithDeals extends StatelessWidget {
  const ProductListWithDeals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCommon(AppBarTitle("Refurbished Apple iPhone 12 Mini",
          "Apple  > iPhone 12 Mini > Detail"),
        appbar: AppBar(), onTapCallback: (){},leadingImage: GestureDetector(
            onTap: ()=> Navigator.pop(context),
            child: Image.asset("assets/images/back_arrow.png"))
        ,trailingAction: [Icon(Icons.star_border_outlined,color: Colors.black,),
          Image.asset("assets/images/lock.png")],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
