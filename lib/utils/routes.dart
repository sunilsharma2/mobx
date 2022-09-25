import 'package:flutter/material.dart';
import 'package:mobx/UI/auth/login_screen.dart';
import 'package:mobx/UI/dashboard/dashboard_screen.dart';
import 'package:mobx/UI/dashboard/home/home_sc.dart';
import 'package:mobx/UI/dashboard/orders/orders_home.dart';
import 'package:mobx/UI/dashboard/profile/profile_screen.dart';
import 'package:mobx/UI/dashboard/sell/sell_home.dart';

import '../UI/dashboard/repair/repair_home.dart';








class Routes {

  static const loginScreen = "/";
  static const dashboardScreen = "dashboardScreen";
  static const homeScreen = "homeScreen";
  static const sellHome = "sellHome";
  static const repairHome = "repairHome";
  static const ordersHome = "ordersHome";
  static const profileScreen = "profileScreen";

static Route<dynamic> generatedRoute(RouteSettings settings){
        switch(settings.name){
          case loginScreen:
            return MaterialPageRoute(builder: (_) => LoginScreen());
          case dashboardScreen:
            return MaterialPageRoute(builder: (_) => DashboardScreen());
          case homeScreen:
            return MaterialPageRoute(builder: (_) => HomeScreen());
          case sellHome:
            return MaterialPageRoute(builder: (_) => SellHome());
          case repairHome:
            return MaterialPageRoute(builder: (_) => RepairHome());
          case profileScreen:
            return MaterialPageRoute(builder: (_) => ProfileScreen());
          case ordersHome:
            return MaterialPageRoute(builder: (_) => OrdersHome());
          default:
            return MaterialPageRoute(
                builder: (_) => Scaffold(
                    body: Center(
                        child: Text('No route defined for ${settings.name}'))));
        }
}

}