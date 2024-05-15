import 'package:flutter/material.dart';

Map<int, Color> color = {
  50: const Color.fromRGBO(220, 56, 75, .1),
  100: const Color.fromRGBO(220, 56, 75, .2),
  200: const Color.fromRGBO(220, 56, 75, .3),
  300: const Color.fromRGBO(220, 56, 75, .4),
  400: const Color.fromRGBO(220, 56, 75, .5),
  500: const Color.fromRGBO(220, 56, 75, .6),
  600: const Color.fromRGBO(220, 56, 75, .7),
  700: const Color.fromRGBO(220, 56, 75, .8),
  800: const Color.fromRGBO(220, 56, 75, .9),
  900: const Color.fromRGBO(220, 56, 75, 1),
};

class MyColors {
  static Color white = const Color(0xFFFFFFFF);
  static Color gray = const Color.fromARGB(255, 211, 209, 209);
  static Color grayLight = const Color.fromARGB(255, 239, 238, 238);
  // static Color whiteOpacity = const Color.fromRGBO(255, 255, 255, 0.2);
  static Color primaryColor = const Color.fromARGB(255, 146, 15, 122);
  // static Color primaryOpacityColor = const Color.fromRGBO(0, 0, 0, 0.4);
  // static Color primaryOpacityColorDark = const Color.fromRGBO(194, 28, 56, 0.8);
  // static Color primaryColorDark = const Color(0xFFA7001C);
  // static Color amberColor = const Color(0xFFF6A00C);
  // static Color amberColorLight = const Color(0xFFFFD500);

  // Grandiants
  static List<Color> gradiantPrimary = <Color>[
    const Color.fromARGB(255, 200, 3, 171),
    const Color.fromARGB(255, 125, 5, 125),
  ];
  static List<Color> gradiantSecondary = <Color>[
    const Color.fromARGB(255, 146, 15, 122),
    const Color.fromARGB(255, 105, 5, 105),
  ];
}
