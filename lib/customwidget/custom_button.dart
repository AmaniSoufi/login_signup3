import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.width,
    required this.text,
    required this.height,
    required this.color,
    required this.txtcolor,
    required this.onPressed,
  });

  final double width;
  final double height;
  final String text;
  final Color color;
  final Color txtcolor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: MaterialButton(
        padding: EdgeInsets.symmetric(horizontal: width * 0.1),
        onPressed: onPressed,
        height: height * 0.08,
        color: color,
        textColor: txtcolor,
        child: Text(text),
      ),
    );
  }
}
