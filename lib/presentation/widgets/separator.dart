import 'package:citiapp/utils/colors.dart';
import 'package:flutter/material.dart';

Widget separator() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(
        width: 25.0,
        height: 1.0,
        color: MyColors.white,
        margin: const EdgeInsets.only(right: 5.0),
      ),
      Text("O", style: TextStyle(fontSize: 17.0, color: MyColors.white)),
      Container(
        width: 25.0,
        height: 1.0,
        color: MyColors.white,
        margin: const EdgeInsets.only(left: 5.0),
      ),
    ],
  );
}
