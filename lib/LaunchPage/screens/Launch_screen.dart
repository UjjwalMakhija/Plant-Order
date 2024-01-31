import 'package:flutter/material.dart';
import 'package:plant_order/LaunchPage/widgets/layout.dart';
import 'package:plant_order/common/widgets/background.dart';
import 'package:plant_order/common/widgets/backgroundgradient.dart';

class Landingpage extends StatefulWidget {
  static const String routeName = "/landingpage";
  const Landingpage({super.key});

  @override
  State<Landingpage> createState() => _LandingpageState();
}

class _LandingpageState extends State<Landingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
        children: [  
          Background(),
        Bgradient(),
        layout(),

        ],
            ),
      )
    );
  }
}
