// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:graphql_users/const.dart';

class SubTitles extends StatelessWidget {
  String title;
  String subTitle;

  SubTitles({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$title : ',
          style: kSubtitleTextStyle,
        ),
        Text(
          subTitle,
          style: kSubtitleTextStyle.copyWith(
              fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
