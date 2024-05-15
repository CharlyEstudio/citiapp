import 'package:citiapp/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  String text;
  IconData icon;
  bool obscureText;

  CustomTextfield(
      {required this.text, required this.icon, this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      margin: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
      decoration: BoxDecoration(
          color: MyColors.white,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15.0),
              bottomRight: Radius.circular(15.0))),
      child: TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
            border: InputBorder.none,
            label: Text(text),
            prefixIcon: Container(
              margin: const EdgeInsets.only(top: 10.0),
              child: Wrap(
                alignment: WrapAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(icon),
                  Container(
                    height: 20.0,
                    width: 1.0,
                    color: MyColors.gray,
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
