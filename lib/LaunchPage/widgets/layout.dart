import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:plant_order/LaunchPage/widgets/carousel_images.dart';

class layout extends StatefulWidget {
  const layout({super.key});

  @override
  State<layout> createState() => _layoutState();
}

class _layoutState extends State<layout> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        const SizedBox(
          height: 70,
        ),
        Container(
          margin: const EdgeInsets.only(right: 60),
          height: height * 0.22,
          width: width * 0.5,
          // color: Colors.purpleAccent,
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            RotatedBox(
              quarterTurns: 3,
              child: Text(
                "plant.com",
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 35),
              child:const VerticalDivider(
                color: Colors.black,
              ),
            ),
            Container(
              height: 100,
              width: 120,
              child: Text(
                "Plant a tree for life",
                style: GoogleFonts.inter(
                    textStyle:const TextStyle(
                  height: 1.1,
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                )),
                maxLines: 3,
              ),
            ),
          ]),
        ),

    const SizedBox(
          height: 30,
        ),
        CarouselImages(),
      
        // FanCarouselImageSlider(
        //   sliderHeight: 200,
        //   imagesLink: GlobalVariables.images,
        //   isAssets: false,
        //   autoPlay: true,
        // )
      ],
    );
  }
}
