import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyTextFromField extends StatelessWidget {
  final String hintText;
   bool obscureText=false;
   TextEditingController controller;
  MyTextFromField({this.hintText,this.obscureText,@required this.controller});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      
      ),
      child: TextFormField(
        controller: controller,
         obscureText: obscureText,
         decoration: InputDecoration(
           fillColor: Colors.grey[100],
           filled: true,
            hintText: hintText,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10.0),
            )
         ),
      ),
    );
  }
}