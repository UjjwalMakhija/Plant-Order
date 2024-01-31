import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:plant_order/common/global_variables.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:plant_order/features/user/home/screen/home_screen.dart';

class CarouselImages extends StatefulWidget {
  const CarouselImages({super.key});

  @override
  State<CarouselImages> createState() => _CarouselImagesState();
}

class _CarouselImagesState extends State<CarouselImages> {
  int current = 0;
  void naviagettohomescreeen() {
    Navigator.pushNamed(context, Homescreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
            options: CarouselOptions(
                onPageChanged: (index, reason) {
                  setState(() {
                    current = index;
                  });
                },
                viewportFraction: 0.8,
                height: 300,
                autoPlay: true,
                scrollPhysics: ScrollPhysics(parent: BouncingScrollPhysics()),
                autoPlayCurve: Curves.easeIn,
                autoPlayAnimationDuration: Duration(seconds: 2)),
            items: GlobalVariables.images.map((i) {
              return Column(
                children: [
                  Flexible(
                      child: Container(
                    child: Image.asset(
                      i,
                      height: 525,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ))
                ],
              );
            }).toList()),
        SizedBox(
          height: 50,
        ),
        Container(
          margin: const EdgeInsets.only(left: 5),
          height: 50,
          width: 213,
          child: Text(
            "Worldwide Delivery within 10-15 days",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
                textStyle: TextStyle(
              height: 1.1,
              fontSize: 20,
              fontWeight: FontWeight.w300,
            )),
            maxLines: 2,
          ),
        ),
        SizedBox(
          height: 50,
        ),
        DotsIndicator(
          dotsCount: GlobalVariables.images.length,
          position: current,
          decorator: DotsDecorator(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              // activeShape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular()),
              activeColor: Colors.black,
              size: Size(25, 5)),
        ),
        FloatingActionButton(
          shape: const CircleBorder(),
          onPressed: naviagettohomescreeen,
          child: Text(
            "Go",
            style: GoogleFonts.inter(
                textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white)),
          ),
          backgroundColor: Color.fromARGB(255, 18, 207, 116),
        )
      ],
    );
  }
}
