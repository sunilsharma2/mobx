import 'package:flutter/material.dart';
import 'package:mobx/utils/constants.dart';
import 'package:mobx/utils/utilities.dart';







class GridListing extends StatelessWidget {
  const GridListing({Key? key}) : super(key: key);

  Widget _listItem(BuildContext context){
    return Column(
      children: [
        Stack(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              width: getCurrentScreenWidth(context),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Utility.getColorFromHex(globalGreyColor))),
              height: getCurrentScreenHeight(context)/4,
              child: Image.asset("assets/images/iphone_pic.png"),),
              Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.fromLTRB(8,4,8,4),
                  decoration: BoxDecoration(color: Utility.getColorFromHex(globalGreenColor)
                  ,borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10))),
                  child: Text("40% OFF",style: Theme.of(context).textTheme.caption!.copyWith(fontSize: 8,color: Colors.white),))
          ],
        ),
          SizedBox(height: 5,),
          Text("Refurbished Apple iPhone 12 128 GB ",style: Theme.of(context).textTheme.caption,),
          SizedBox(height: 5,),
          Row(children: [
            Text("₹55,099",style: Theme.of(context).textTheme.bodyText2,),
            SizedBox(width: 3,),
            Text("₹70,900",style: Theme.of(context).textTheme.caption!.copyWith(decoration: TextDecoration.lineThrough,),)
          ],)
      ],
    );
  }
  Widget myWidget(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 5/7,
            mainAxisSpacing: 19,
            crossAxisSpacing: 7,
            crossAxisCount: 2,
          ),
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return _listItem(context);
          }
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Center(
        child: myWidget(context),
      ),
    );
  }
}
