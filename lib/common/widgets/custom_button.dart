import "package:flutter/material.dart";

class CustomButton extends StatefulWidget {
  final String text;
  final VoidCallback onTap;
  final Color? color;

  const CustomButton({super.key, required this.text, required this.onTap, this.color=const Color.fromARGB(255, 97, 197, 149)});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onTap,
      child: Text(
        widget.text,
        style: const TextStyle(
          color: Colors.black
        ),
      ),
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
        backgroundColor: widget.color
      ),
    );
  }
}
