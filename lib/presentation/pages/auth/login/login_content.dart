import 'package:citiapp/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginContent extends StatelessWidget {
  const LoginContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: MyColors.gradiantSecondary,
            ),
          ),
          padding: const EdgeInsets.only(left: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              RotatedBox(
                quarterTurns: 1,
                child: Text(
                  "Iniciar Sesión",
                  style: TextStyle(
                      color: MyColors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0),
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              RotatedBox(
                quarterTurns: 1,
                child: Text(
                  "Registro",
                  style: TextStyle(
                      color: MyColors.gray,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
              ),
              const SizedBox(
                height: 90.0,
              ),
            ],
          ),
        ),
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
              children: <Widget>[
                const SizedBox(
                  height: 70.0,
                ),
                Text(
                  "Bienvenido",
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: MyColors.white),
                ),
                Text("de nuevo...",
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
                Text("Inicia Sesión",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: MyColors.white)),
                Container(
                  height: 55.0,
                  margin:
                      const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
                  decoration: BoxDecoration(
                      color: MyColors.white,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0))),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        label: const Text("Correo"),
                        prefixIcon: Container(
                          margin: const EdgeInsets.only(top: 10.0),
                          child: Wrap(
                            alignment: WrapAlignment.spaceEvenly,
                            children: <Widget>[
                              const Icon(Icons.email),
                              Container(
                                height: 20.0,
                                width: 1.0,
                                color: MyColors.gray,
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
                Container(
                  height: 55.0,
                  margin:
                      const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                  decoration: BoxDecoration(
                      color: MyColors.white,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0))),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        label: const Text("Password"),
                        prefixIcon: Container(
                          margin: const EdgeInsets.only(top: 10.0),
                          child: Wrap(
                            alignment: WrapAlignment.spaceEvenly,
                            children: <Widget>[
                              const Icon(Icons.lock),
                              Container(
                                height: 20.0,
                                width: 1.0,
                                color: MyColors.gray,
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
                const Spacer(),
                Container(
                  height: 45.0,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(
                      left: 20.0, right: 20.0, bottom: 20.0),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: MyColors.white,
                      ),
                      child: Text(
                        "Iniciar Sesión",
                        style: TextStyle(
                            fontSize: 18.0, color: MyColors.primaryColor),
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 25.0,
                      height: 1.0,
                      color: MyColors.white,
                      margin: const EdgeInsets.only(right: 5.0),
                    ),
                    Text("O",
                        style:
                            TextStyle(fontSize: 17.0, color: MyColors.white)),
                    Container(
                      width: 25.0,
                      height: 1.0,
                      color: MyColors.white,
                      margin: const EdgeInsets.only(left: 5.0),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "No tienes cuenta?",
                        style: TextStyle(
                          color: MyColors.grayLigth,
                        ),
                      ),
                      const SizedBox(
                        width: 7.0,
                      ),
                      Text(
                        "registrate",
                        style: TextStyle(
                            color: MyColors.grayLigth,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
