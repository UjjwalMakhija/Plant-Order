import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_order/common/widgets/background.dart';
import 'package:plant_order/common/widgets/backgroundgradient.dart';
import 'package:plant_order/features/user/home/screen/home_screen.dart';
import 'package:plant_order/features/user/plantdetails/widgets/layout.dart';

class Plantdetailscreen extends StatefulWidget {
  static const String routeName = '/plantdetail';
  const Plantdetailscreen({super.key});

  @override
  State<Plantdetailscreen> createState() => PlantdetailscreenState();
}

class PlantdetailscreenState extends State<Plantdetailscreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Bgradient(
            height: 250,
          ),
          layoutdetailsscreen(),
        ],
      )),
    );
  }
}
