
import 'package:flutter/material.dart';

class ThemeConfig{
  static const Color  accentColor= Color.fromRGBO(2, 180, 173,1);// main theme color
  static Color lightAccentColor=const Color.fromRGBO(2, 180, 173,0.3);// main light theme  color
  static Color xLightAccentColor=const Color.fromRGBO(2, 180, 173,0.1);// main extra light theme color
  static Color accentDarkColor=const Color.fromRGBO(18, 104, 13,1);// deep theme color

  static Color lightFontColor=const Color.fromRGBO(255, 255, 255, 1.0);
  static Color darkFontColor=const Color.fromRGBO(0, 0, 0, 1.0);

//Optional Color
  static Color secondaryColor=const Color.fromRGBO(255, 124, 8,1);
  static Color onError=const Color.fromRGBO(225, 20, 20, 1.0);
  static Color surfaceLight=const Color.fromRGBO(201, 201, 201, 1.0);
  static Color surfaceDark=const Color.fromRGBO(0, 0, 0, 1.0);
  static Color onSurface= const Color.fromRGBO(201, 201, 201, 1.0);






  //DO NOT TRY TO CHANGE THIS COLOR'S
  static const Color white = Color.fromRGBO(255,255,255, 1);
  static Color noColor = Color.fromRGBO(255,255,255, 0);
  static Color xxlightGrey = Color.fromRGBO(243, 245, 247, 1.0);
  static Color xlightGrey = Color.fromRGBO(239,239,239, 1);
  static Color lightGrey = Color.fromRGBO(209,209,209, 1);
  static Color mediumGrey = Color.fromRGBO(167,175,179, 1);
  static Color blueGrey = Color.fromRGBO(168,175,179, 1);
  static Color grey = Color.fromRGBO(153,153,153, 1);
  static Color darkGrey = Color.fromRGBO(107,115,119, 1);
  static Color extraDarkGrey = Color.fromRGBO(62,68,71, 1);
  static Color amberLight = Color.fromRGBO(254, 234, 209, 1);
  static Color amberMedium = Color.fromRGBO(254, 240, 215, 1);
  static Color amber = Color.fromRGBO(255, 124, 8, 1);
  static Color amberShadow = Color.fromRGBO(255, 168, 0, .4);
  static const Color red = Color.fromRGBO(236, 9, 44, 1);
  static Color green = Colors.green;
  static Color blue = Colors.blue;
  static Color black = Colors.black;
  static Color shimmer_base = Colors.grey.shade50;
  static Color shimmer_highlighted = Colors.grey.shade200;




  static   MaterialColor accentMaterialColor= MaterialColor(ThemeConfig.accentColor.value,{
    50 :  ThemeConfig.accentColor.withOpacity(0.05),
    100 : ThemeConfig.accentColor.withOpacity(0.1),
    200 :  ThemeConfig.accentColor.withOpacity(0.2),
    300 :  ThemeConfig.accentColor.withOpacity(0.3),
    400 :  ThemeConfig.accentColor.withOpacity(0.4),
    500 : ThemeConfig.accentColor.withOpacity(0.5),
    600 :  ThemeConfig.accentColor.withOpacity(0.6),
    700 :  ThemeConfig.accentColor.withOpacity(0.7),
    800 :  ThemeConfig.accentColor.withOpacity(0.8),
    900 :  ThemeConfig.accentColor.withOpacity(0.9),
  });

}