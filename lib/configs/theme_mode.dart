import 'package:basic_app/configs/style_config.dart';
import 'package:basic_app/configs/theme_config.dart';
import 'package:flutter/material.dart';



class AppThemeMode{
  static ThemeData light=ThemeData(
    fontFamily: "KulimPark",
    textTheme: TextTheme(
        displayLarge:TextStyle(
          fontSize: 26,
          color: ThemeConfig.darkFontColor,
          fontWeight: FontWeight.w800) ,
        displayMedium:TextStyle(
          fontSize: 22,
          color: ThemeConfig.darkFontColor,
          fontWeight: FontWeight.w800) ,
        displaySmall:TextStyle(
          fontSize: 20,
          color: ThemeConfig.darkFontColor,
          fontWeight: FontWeight.w800) ,
      bodyLarge:  TextStyle(
        fontSize: 18,
        color: ThemeConfig.darkFontColor,
        fontWeight: FontWeight.w800),
        bodyMedium: TextStyle(
          fontSize: 16,
          height: 1,
          color: ThemeConfig.darkFontColor,
          fontWeight: FontWeight.w600),
        bodySmall:TextStyle(
          fontSize: 14,
          color: ThemeConfig.darkFontColor,
          fontWeight: FontWeight.w600),
      labelMedium:  TextStyle(
          fontSize: 12,
          color: ThemeConfig.darkFontColor,
          fontWeight: FontWeight.w600),
      labelSmall:  TextStyle(
          fontSize: 10,
          color: ThemeConfig.darkFontColor,
          fontWeight: FontWeight.w600),
    ),
    scaffoldBackgroundColor: ThemeConfig.surfaceLight,
      appBarTheme: AppBarTheme(
          backgroundColor: ThemeConfig.white,
          iconTheme: IconThemeData(color:ThemeConfig.darkFontColor, )
      ),
    inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: ThemeConfig.white,
            prefixIconColor: ThemeConfig.grey,
            hintStyle: TextStyle(fontSize: 12.0, color: ThemeConfig.lightGrey),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ThemeConfig.grey),
              borderRadius: const BorderRadius.all(
                const Radius.circular(2.0),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: ThemeConfig.darkFontColor,
                  width: 1),
              borderRadius: const BorderRadius.all(
                const Radius.circular(2.0),
              ),
            ),

            contentPadding: EdgeInsets.symmetric(horizontal: 16.0)
    ),
    iconTheme: IconThemeData(color: ThemeConfig.darkFontColor,size: 24),

  );


  static ThemeData dark=ThemeData(
      fontFamily: "KulimPark",
      scaffoldBackgroundColor: ThemeConfig.surfaceDark,
      textTheme: TextTheme(
          displayLarge :TextStyle(
            fontSize: 26,
            color: ThemeConfig.lightFontColor,
            fontWeight: FontWeight.w800) ,
          displayMedium:TextStyle(
            fontSize: 22,
            color: ThemeConfig.lightFontColor,
            fontWeight: FontWeight.w800) ,
          displaySmall:TextStyle(
            fontSize: 20,
            color: ThemeConfig.lightFontColor,
            fontWeight: FontWeight.w800) ,
       bodyLarge :  TextStyle(
            fontSize: 18,
            color: ThemeConfig.lightFontColor,
            fontWeight: FontWeight.w800),
      bodyMedium: TextStyle(
            fontSize: 16,
          height: 1,
            color: ThemeConfig.lightFontColor,
            fontWeight: FontWeight.w600),
      bodySmall:TextStyle(
            fontSize: 14,
            color: ThemeConfig.lightFontColor,
            fontWeight: FontWeight.w600),
        labelMedium:  TextStyle(
            fontSize: 12,
            color: ThemeConfig.lightFontColor,
            fontWeight: FontWeight.w600),
       labelSmall :  TextStyle(
            fontSize: 10,
            color: ThemeConfig.lightFontColor,
            fontWeight: FontWeight.w600),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: ThemeConfig.surfaceDark,
        iconTheme: IconThemeData(color:ThemeConfig.lightFontColor, )
      ),
      iconTheme: IconThemeData(color: ThemeConfig.lightFontColor,size: 24),
    inputDecorationTheme: InputDecorationTheme(
        filled: true,
        prefixIconColor: ThemeConfig.lightGrey,
        fillColor: ThemeConfig.darkGrey,
        hintStyle: TextStyle(fontSize: 14.0, color: ThemeConfig.grey),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ThemeConfig.grey),
          borderRadius: const BorderRadius.all(
            const Radius.circular(2.0),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: ThemeConfig.white,
              width: 1),
          borderRadius: const BorderRadius.all(
            const Radius.circular(2.0),
          ),
        ),

        contentPadding: EdgeInsets.symmetric(horizontal: 16.0)
    ),


  );
}