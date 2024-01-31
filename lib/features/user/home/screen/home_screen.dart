import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_order/features/user/home/widgets/discount.dart';
import 'package:plant_order/features/user/home/widgets/navigationbar.dart';
import 'package:plant_order/features/user/home/widgets/tab_bar_view.dart';

class Homescreen extends StatefulWidget {
  static const String routeName = '/home';

  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  // color: Colors.red,
                  height: 70,
                  width: 212,
                  child: Text(
                    "Find your favourite plant",
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.w700,
                            height: 1.3)),
                    maxLines: 2,
                  ),
                ),
                Container(
                  width: 50,
                  height: 58,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.black, width: 1)),
                  child: Icon(
                    Icons.search_sharp,
                    size: 40,
                  ),
                )
              ],
            ),
            Discount(),
            SizedBox(
              height: 30,
            ),
            Tabbarview(),
           
            SizedBox(
              height: 10,
            ),
           navigationBar()
          ],
        ),
      ),
    );
  }
}
