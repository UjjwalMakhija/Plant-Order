import 'package:flutter/material.dart';

class navigationBar extends StatefulWidget {
  const navigationBar({super.key});

  @override
  State<navigationBar> createState() => _navigationBarState();
}

class _navigationBarState extends State<navigationBar> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width * 0.9,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color.fromARGB(127, 217, 217, 217)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              onPressed: () {}, icon: Image.asset("assets/images/Home.png")),
          IconButton(
              onPressed: () {}, icon: Image.asset("assets/images/Heart.png")),
          IconButton(
              onPressed: () {}, icon: Image.asset("assets/images/bag.png")),
          IconButton(
              onPressed: () {}, icon: Image.asset("assets/images/User.png")),
          // IconButton(onPressed: (){}, icon: Image.asset("assets/images/Heart.png")),
        ],
      ),
    );
  }
}
