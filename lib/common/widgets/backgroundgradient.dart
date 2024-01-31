import "package:flutter/material.dart";

class Bgradient extends StatelessWidget {
  final double? height;
  const Bgradient({super.key, this.height=320});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
         SizedBox(
          height: height,
        ),
        ClipOval(
          child: Container(
            height: 380,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: RadialGradient(
              colors: [
                Color.fromARGB(175, 100, 232, 105),
                Color.fromARGB(0, 175, 170, 170),
              ],
              // stops: [0.0, 0.5],
            )),
          ),
        )
      ],
    );;
  }
}