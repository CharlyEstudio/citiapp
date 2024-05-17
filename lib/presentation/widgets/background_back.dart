import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

Widget backgroundBack({required BuildContext context}) {
  return Container(
    alignment: Alignment.centerRight,
    child: Lottie.asset(
      'assets/lotties/background1.json',
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      fit: BoxFit.fill,
    ),
  );
}
