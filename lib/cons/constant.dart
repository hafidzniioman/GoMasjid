import 'package:flutter/material.dart';

class ColorPalette{
  static const primaryColor = Color(0XFF5364e8);
  static const primaryDarkColor = Color(0XFF607CBF);
  static const underLineTexField = Color(0XFF8B97FF);
  static const hintColor = Color(0XFFCCD1FF);
}

class TextLupaPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(top: 60),
      child: Text(
        'Lupa Password',
        style: TextStyle(
            fontSize: 32, color: Colors.black, fontWeight: FontWeight.bold),
      ));
  }
}