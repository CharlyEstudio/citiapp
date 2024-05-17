import 'package:citiapp/presentation/widgets/custom_button.dart';
import 'package:citiapp/presentation/widgets/custom_textfield.dart';
import 'package:citiapp/presentation/widgets/separator.dart';
import 'package:citiapp/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class RegisterContent extends StatelessWidget {
  const RegisterContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        _backgroundBack(context: context),
        _backgroundFront(context: context),
      ],
    );
  }

  Widget _backgroundFront({required BuildContext context}) {
    return Container(
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50.0,
              ),
              Container(
                alignment: Alignment.centerRight,
                child: Lottie.asset(
                  'assets/lotties/store1.json',
                  width: 250,
                  height: 250,
                  fit: BoxFit.fill,
                ),
              ),
              CustomTextfield(
                text: "Nombre(s)",
                icon: Icons.person,
              ),
              CustomTextfield(
                text: "Apellido(s)",
                icon: Icons.person,
              ),
              CustomTextfield(
                text: "Correo",
                icon: Icons.email,
              ),
              CustomTextfield(
                text: "Contraseña",
                icon: Icons.lock,
              ),
              const SizedBox(
                height: 100.0,
              ),
              CustomButton(
                text: "Registrarse",
                color: MyColors.white,
                textColor: MyColors.primaryColor,
              ),
              separator(),
              const SizedBox(
                height: 15.0,
              ),
              _haveAccount(context: context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _haveAccount({required BuildContext context}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Tienes cuenta?",
            style: TextStyle(
              color: MyColors.grayLight,
            ),
          ),
          const SizedBox(
            width: 7.0,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, 'login');
            },
            child: Text(
              "Inicia sesión",
              style: TextStyle(
                  color: MyColors.grayLight, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  Widget _backgroundBack({required BuildContext context}) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: MyColors.gradiantSecondary,
        ),
      ),
      padding: const EdgeInsets.only(left: 12.0),
    );
  }
}
