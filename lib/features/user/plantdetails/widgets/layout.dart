import 'package:plant_order/features/user/home/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class layoutdetailsscreen extends StatefulWidget {
  const layoutdetailsscreen({super.key});

  @override
  State<layoutdetailsscreen> createState() => _layoutdetailsscreenState();
}

class _layoutdetailsscreenState extends State<layoutdetailsscreen> {
  void navigatetoHomescreen() {
    Navigator.pushNamed(context, Homescreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(
          height: 70,
        ),
        Container(
          width: width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  height: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(color: Colors.black)),
                  child: Center(
                    child: IconButton(
                        onPressed: navigatetoHomescreen,
                        icon: Icon(
                          Icons.arrow_back,
                          size: 34,
                          color: Color.fromARGB(255, 11, 11, 11),
                        )),
                  )),
              Text(
                "Details",
                style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 27,
                        color: Colors.black)),
              ),
              Container(
                  height: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(color: Colors.black)),
                  child: Center(
                    child: IconButton(
                        onPressed: navigatetoHomescreen,
                        icon: Icon(
                          Icons.favorite_outline_outlined,
                          size: 34,
                          color: Color.fromARGB(255, 11, 11, 11),
                        )),
                  ))
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: width * 0.7,
          height: height * 0.45,
          // color: Colors.amber,
          child: Image.asset(
            'assets/images/Kotambir.png',
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: width * 0.95,
          height: height * 0.05,
          // color: Colors.amber,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Kotambir",
                style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 27,
                        color: Colors.black)),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star_outlined,
                    size: 30,
                    color: Color.fromARGB(255, 81, 172, 155),
                  ),
                  Text(
                    "4.5",
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black)),
                  ),
                  Text(
                    "(132  Review)",
                    style: GoogleFonts.openSans(
                        textStyle:
                            TextStyle(fontSize: 13, color: Colors.black)),
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: width * 0.95,
          height: height * 0.18,
          // color: Colors.lightBlue[100],
          child: Text(
            "Coriander is an annual herb in the family Apiaceae. It is also known as Chinese parsley, dhania, or cilantro. All parts of theplant are edible, but the fresh leaves andthe dried seeds are the parts mosttraditionally used cooking.",
            style: GoogleFonts.openSans(
                textStyle: TextStyle(fontSize: 17, color: Colors.black)),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          width: width * 0.8,
          height: height * 0.09,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Price",
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 120, 108, 108))),
                  ),
                  Text(
                    "\$30",
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                  )
                ],
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 81, 172, 155),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Add to cart",
                    style: GoogleFonts.openSans(
                        textStyle:
                            TextStyle(fontSize: 24, color: Colors.white)),
                  )),
            ],
          ),
        )
      ],
    );
  }
}
