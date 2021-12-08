// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  void Function() onTap;
  String btnTitle;
  CustomButton({
    Key? key,
    required this.onTap,
    required this.btnTitle,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: Text(
          btnTitle.toUpperCase(),
          style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
