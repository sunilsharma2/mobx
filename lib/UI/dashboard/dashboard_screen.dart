import 'package:flutter/material.dart';
import 'package:mobx/UI/dashboard/home/home_sc.dart';
import 'package:mobx/UI/dashboard/orders/orders_home.dart';
import 'package:mobx/UI/dashboard/profile/profile_screen.dart';
import 'package:mobx/UI/dashboard/repair/repair_home.dart';
import 'package:mobx/UI/dashboard/sell/sell_home.dart';
import 'package:mobx/provider/dashboard/dashboard_provider.dart';
import 'package:mobx/utils/constants.dart';
import 'package:mobx/utils/utilities.dart';
import '../../common_widgets/app_bar_common.dart';
import 'package:provider/provider.dart';






class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SellHome(),
    RepairHome(),
    OrdersHome(),
    ProfileScreen()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCommon(Image.asset("assets/images/mobex_logo.png"),
        appbar: AppBar(), onTapCallback: (){},trailingAction: [Icon(Icons.search,color: Colors.black,),
          Icon(Icons.shopping_cart,color: Colors.black,)],),
      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/home_icon.png"),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/sell_icon.png"),
            label: 'Sell',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/repair_icon.png"),
            label: 'Repair',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/order_icon.png"),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/profile_icon.png",color: Colors.amber[800],),
            label: 'Profile',
          ),
        ],
        currentIndex: context.watch<DashboardProvider>().selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (int index) =>context.read<DashboardProvider>().setSelectedIndex(index),
        unselectedItemColor: Utility.getColorFromHex(globalBlackColor),
        showUnselectedLabels: true,
      ),
      body: _widgetOptions.elementAt(context.watch<DashboardProvider>().selectedIndex),
    );
  }
}
