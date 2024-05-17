import 'package:flutter/material.dart';

Widget textRotated(
    {required BuildContext context,
    required String route,
    required String currentRoute,
    required String text,
    required Color color,
    double fontSize = 12.0}) {
  return GestureDetector(
    onTap: () {
      if (currentRoute != route) {
        Navigator.pushReplacementNamed(context, route);
      }
    },
    child: RotatedBox(
      quarterTurns: 1,
      child: Text(
        text,
        style: TextStyle(
            color: color, fontWeight: FontWeight.bold, fontSize: fontSize),
      ),
    ),
  );
}
