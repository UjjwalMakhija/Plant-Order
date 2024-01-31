import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:shadow/shadow.dart';

class Discount extends StatelessWidget {
  const Discount({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      height: 147,
      width: 303,
      child: Stack(
        children: [
          Container(
            height: 92,
            width: 303,
            margin: const EdgeInsets.only(top: 50, bottom: 5),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 210, 235, 193),
              borderRadius: BorderRadius.circular(23),
            ),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 35, top: 13),
                    child: Text(
                      "40% OFF",
                      // textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              fontSize: 27, fontWeight: FontWeight.w700)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Text(
                      "23 JAN - 26 JAN",
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      )),
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,

            // options: ShadowOptions(),
            child: Padding(
              padding: const EdgeInsets.only(right: 15, bottom: 15),
              child: Image.asset(
                'assets/images/Cactus.png',
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
