import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  MyTextField(
      {Key? key,
        this.kbtype = TextInputType.text,
        required this.hintText,
        required this.controller})
      : super(key: key);

  TextInputType kbtype;
  TextEditingController controller;
  String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: TextField(
        controller: controller,
        keyboardType: kbtype,
        decoration: InputDecoration(
            hintText: hintText,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)))),
      ),
    );
  }
}
