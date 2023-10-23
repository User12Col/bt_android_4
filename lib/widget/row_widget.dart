import 'package:flutter/material.dart';
class RowWidget extends StatelessWidget {
  String text;
  TextEditingController controller;
  RowWidget({Key? key, required this.text, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(text, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
        Container(width: 200, child: TextField(controller: controller,),)
      ],
    );
  }
}
