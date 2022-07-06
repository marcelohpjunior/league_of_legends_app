import 'package:flutter/material.dart';

class LolColors {
  static const gold = Color.fromRGBO(194, 144, 45, 1);
  static const blueDark = Color.fromRGBO(6, 28, 37, 1);
  static const blue = Color.fromRGBO(0, 102, 128, 1);
  static const blueLight = Color.fromRGBO(11, 198, 227, 1);
  static const white = Color.fromRGBO(247, 247, 247, 1);
  static const grey = Color.fromRGBO(41, 41, 41, 1);
  static const black = Color.fromRGBO(17, 17, 17, 1);
  static const red = Color.fromRGBO(235, 0, 41, 1);

  static const MaterialColor materialBlue = MaterialColor(0x006680, {
    50: Color.fromRGBO(0, 102, 128, .1),
    100: Color.fromRGBO(0, 102, 128, .2),
    200: Color.fromRGBO(0, 102, 128, .3),
    300: Color.fromRGBO(0, 102, 128, .4),
    400: Color.fromRGBO(0, 102, 128, .5),
    500: Color.fromRGBO(0, 102, 128, .6),
    600: Color.fromRGBO(0, 102, 128, .7),
    700: Color.fromRGBO(0, 102, 128, .8),
    800: Color.fromRGBO(0, 102, 128, .9),
    900: Color.fromRGBO(0, 102, 128, 1),
  });

  static const gradientBlue = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromRGBO(0, 91, 234, 1),
      Color.fromRGBO(0, 198, 251, 1),
    ],
  );
  static const gradientRed = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromRGBO(237, 29, 36, 1),
      Color.fromRGBO(237, 31, 105, 1),
    ],
  );
  static const gradientPurple = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromRGBO(178, 26, 239, 1),
      Color.fromRGBO(117, 121, 255, 1),
    ],
  );
  static const gradientGreen = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromRGBO(11, 163, 96, 1),
      Color.fromRGBO(60, 186, 146, 1),
    ],
  );
  static const gradientPink = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromRGBO(255, 126, 179, 1),
      Color.fromRGBO(255, 117, 140, 1),
    ],
  );
}
