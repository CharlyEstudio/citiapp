import 'package:citiapp/presentation/widgets/custom_button.dart';
import 'package:citiapp/presentation/widgets/custom_textfield.dart';
import 'package:citiapp/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginContent extends StatelessWidget {
  const LoginContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _backgroundBack(context: context),
        _backgroundFront(context: context),
      ],
    );
  }

  Widget _backgroundBack({required BuildContext context}) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: MyColors.gradiantSecondary,
          ),
        ),
        padding: const EdgeInsets.only(left: 15.0, top: 180.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _textRotated(
                text: "Iniciar Sesión", color: MyColors.white, fontSize: 24.0),
            const SizedBox(
              height: 100.0,
            ),
            _textRotated(
                text: "Registro", color: MyColors.gray, fontSize: 20.0),
            const SizedBox(
              height: 90.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget _backgroundFront({required BuildContext context}) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 60.0, bottom: 35.0),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: MyColors.gradiantPrimary,
                ),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    bottomLeft: Radius.circular(25.0))),
            child: Container(
              margin: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 70.0,
                  ),
                  Text(
                    "Hola!, que",
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: MyColors.white),
                  ),
                  Text("vamos a buscar?",
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: MyColors.white)),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Lottie.asset(
                      'assets/lotties/search2.json',
                      width: 200,
                      height: 200,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Text("Iniciar Sesión",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: MyColors.white)),
                  CustomTextfield(text: "Correo", icon: Icons.email),
                  CustomTextfield(
                    text: "Password",
                    icon: Icons.lock,
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 190.0,
                  ),
                  CustomButton(
                    text: "Iniciar Sesión",
                    color: MyColors.white,
                    textColor: MyColors.primaryColor,
                  ),
                  _separator(),
                  const SizedBox(
                    height: 15.0,
                  ),
                  _dontHaveAccount(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _dontHaveAccount() {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "No tienes cuenta?",
            style: TextStyle(
              color: MyColors.grayLight,
            ),
          ),
          const SizedBox(
            width: 7.0,
          ),
          Text(
            "registrate",
            style: TextStyle(
                color: MyColors.grayLight, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _separator() {
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

  Widget _textRotated(
      {required String text, required Color color, double fontSize = 12.0}) {
    return RotatedBox(
      quarterTurns: 1,
      child: Text(
        text,
        style: TextStyle(
            color: color, fontWeight: FontWeight.bold, fontSize: fontSize),
      ),
    );
  }
}
