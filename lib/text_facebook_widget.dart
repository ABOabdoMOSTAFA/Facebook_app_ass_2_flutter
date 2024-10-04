import 'package:flutter/material.dart';

class TextFacebookWidget extends StatelessWidget {
  TextFacebookWidget({required this.text});

  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        textAlign: TextAlign.start,
        style: TextStyle(color: Colors.white),
        cursorColor: Colors.black,
        decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFb0c5de))),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFb0c5de))),
          hintText: text,
          hintStyle:
              TextStyle(color: Color(0xFFb0c5de), fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
