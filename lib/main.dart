import 'dart:js';

import 'package:flutter/material.dart';
import 'package:plant_order/LaunchPage/screens/Launch_screen.dart';
import 'package:plant_order/common/widgets/background.dart';
import 'package:plant_order/common/widgets/backgroundgradient.dart';
import 'package:plant_order/common/widgets/custom_button.dart';
import 'package:plant_order/features/user/home/screen/home_screen.dart';
import 'package:plant_order/features/user/plantdetails/screens/plantdetails_screen.dart';
import 'package:plant_order/providers/user_provider.dart';
import 'package:plant_order/routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( MultiProvider(providers:[ChangeNotifierProvider(create: (context)=> Userprovider())] ,
   child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // theme: ThemeData(

        // ),
        onGenerateRoute: (settings) => generateRoute(settings),
        debugShowCheckedModeBanner: false,
        home: Landingpage());
  }
}

// class Body extends StatefulWidget {
//   const Body({super.key});

//   @override
//   State<Body> createState() => _BodyState();
// }

// class _BodyState extends State<Body> {
//   void navigatetohomescreen(String text) {
//     Navigator.pushNamed(context, Homescreen.routeName, arguments: text);
//   }

//   void navigatetolandingpage() {
//     Navigator.pushNamed(context, Landingpage.routeName);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(children: [
//         const Text(
//           "Hello world",
//           style: TextStyle(fontSize: 22),
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         CustomButton(text: 'Home', onTap: () => navigatetohomescreen("home"))
//       ]),
//     );
//   }
// }
