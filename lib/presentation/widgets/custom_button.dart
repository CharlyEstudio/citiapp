import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String text;
  Color color;
  Color textColor;

  CustomButton(
      {required this.text,
      this.color = Colors.white,
      this.textColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.0,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18.0,
              color: textColor,
            ),
          )),
    );
  }
}
