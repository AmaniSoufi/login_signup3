import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final double height;

  final IconData prefix;
  const CustomTextFormField({
    required this.label,
    required this.width,
    required this.height,
    required this.prefix,
  });
  String _errorMessage(String str) {
    switch (label) {
      case 'Full Name':
        return 'Full Name is Empty';
      case 'Email':
        return 'Email is Empty';
      case 'Password':
        return 'Password is Empty';
      default:
        return 'Unknow error';
    }
  }

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.07,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: TextFormField(
          validator: (value) {
            if (value!.isEmpty) {
              return _errorMessage(label);
            }
          },
          decoration: InputDecoration(
              prefixIcon: Icon(prefix),
              prefixIconColor: Colors.orange,
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange),
                  borderRadius: BorderRadius.circular(40)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(40)),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: BorderSide(color: Colors.orange)),
              labelText: label,
              labelStyle: TextStyle(color: Colors.orange),
              fillColor: Colors.white,
              filled: true),
        ),
      ),
    );
  }
}
