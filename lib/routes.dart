import 'package:flutter/material.dart';
import 'package:plant_order/LaunchPage/screens/Launch_screen.dart';
import 'package:plant_order/features/user/home/screen/home_screen.dart';
import 'package:plant_order/features/user/plantdetails/screens/plantdetails_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case Homescreen.routeName:
      return MaterialPageRoute(builder: (_) => const Homescreen());
    case Landingpage.routeName:
      return MaterialPageRoute(builder: (_) => const Landingpage());
    case Plantdetailscreen.routeName:
      return MaterialPageRoute(builder: (_) => Plantdetailscreen());
    default:
      return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const Scaffold(
                body: Center(
                  child: Text(
                    "Error Screen not found or does not exist",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ));
  }
}
