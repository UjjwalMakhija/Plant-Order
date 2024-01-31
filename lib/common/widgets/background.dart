import 'package:flutter/material.dart';

class Background extends StatefulWidget {
  const Background({super.key});

  @override
  State<Background> createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(
        height: 50,
      ),
      Container(
        width: double.infinity,
        height: 240,
        color: Color.fromARGB(255, 253, 250, 254),
        child: Align(
          alignment: Alignment.centerRight,
          child: RotatedBox(
            quarterTurns: 0,
            child: Container(
              height: 200,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                    bottomLeft: Radius.circular(100),
                  ),
                  border: Border.all(width: 1.5, color: Colors.black26)),
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 120,
      ),
      Container(
        width: double.infinity,
        height: 150,
        color: Color.fromARGB(255, 253, 250, 254),
        child: Align(
          alignment: Alignment.centerLeft,
          child: RotatedBox(
            quarterTurns: 2,
            child: Container(
              height: 120,
              width: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(90),
                    bottomLeft: Radius.circular(90),
                  ),
                  border: Border.all(width: 1.5, color: Colors.black26)),
            ),
          ),
        ),
      ),
    ]);
  }
}
