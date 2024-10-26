import 'package:basic_app/configs/style_config.dart';
import 'package:basic_app/configs/theme_config.dart';
import 'package:flutter/material.dart';



class AppThemeMode{
  static ThemeData light=ThemeData(
    fontFamily: "KulimPark",
    textTheme: TextTheme(
      headlineLarge:TextStyle(
          fontSize: 26,
          color: ThemeConfig.darkFontColor,
          fontWeight: FontWeight.w800) ,
      headlineMedium:TextStyle(
          fontSize: 22,
          color: ThemeConfig.darkFontColor,
          fontWeight: FontWeight.w800) ,
      headlineSmall:TextStyle(
          fontSize: 20,
          color: ThemeConfig.darkFontColor,
          fontWeight: FontWeight.w800) ,
      displayLarge:  TextStyle(
        fontSize: 18,
        color: ThemeConfig.darkFontColor,
        fontWeight: FontWeight.w800),
      displayMedium: TextStyle(
          fontSize: 16,
          color: ThemeConfig.darkFontColor,
          fontWeight: FontWeight.w600),
      displaySmall:TextStyle(
          fontSize: 14,
          color: ThemeConfig.darkFontColor,
          fontWeight: FontWeight.w600),
      bodyMedium:  TextStyle(
          fontSize: 12,
          color: ThemeConfig.darkFontColor,
          fontWeight: FontWeight.w600),
      bodySmall:  TextStyle(
          fontSize: 10,
          color: ThemeConfig.darkFontColor,
          fontWeight: FontWeight.w600),
    ),
    scaffoldBackgroundColor: ThemeConfig.surfaceLight,
    iconTheme: IconThemeData(color: ThemeConfig.darkFontColor,size: 24)
  );


  static ThemeData dark=ThemeData(
      fontFamily: "KulimPark",
      scaffoldBackgroundColor: ThemeConfig.surfaceDark,
      textTheme: TextTheme(
        headlineLarge:TextStyle(
            fontSize: 26,
            color: ThemeConfig.lightFontColor,
            fontWeight: FontWeight.w800) ,
        headlineMedium:TextStyle(
            fontSize: 22,
            color: ThemeConfig.lightFontColor,
            fontWeight: FontWeight.w800) ,
        headlineSmall:TextStyle(
            fontSize: 20,
            color: ThemeConfig.lightFontColor,
            fontWeight: FontWeight.w800) ,
        displayLarge:  TextStyle(
            fontSize: 18,
            color: ThemeConfig.lightFontColor,
            fontWeight: FontWeight.w800),
        displayMedium: TextStyle(
            fontSize: 16,
            color: ThemeConfig.lightFontColor,
            fontWeight: FontWeight.w600),
        displaySmall:TextStyle(
            fontSize: 14,
            color: ThemeConfig.lightFontColor,
            fontWeight: FontWeight.w600),
        bodyMedium:  TextStyle(
            fontSize: 12,
            color: ThemeConfig.lightFontColor,
            fontWeight: FontWeight.w600),
        bodySmall:  TextStyle(
            fontSize: 10,
            color: ThemeConfig.lightFontColor,
            fontWeight: FontWeight.w600),
      ),
      iconTheme: IconThemeData(color: ThemeConfig.lightFontColor,size: 24)


  );
}