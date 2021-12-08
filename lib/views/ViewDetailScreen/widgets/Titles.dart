// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Titles extends StatelessWidget {
  String title;
  Titles({
    Key? key,
    required this.title,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 20, letterSpacing: 2, color: Colors.grey),
        )
      ],
    );
  }
}
