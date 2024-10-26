import 'package:basic_app/configs/theme_config.dart';
import 'package:basic_app/main.dart';
import 'package:flutter/material.dart';



class StyleConfig {
  static  const double padding = 18.0;
  static const double  padding14 =  14.0;

  static double get spacer => 10.0;//Extra Small section separator
  static double get spacerM => 14.0;//Small section separator
  static double get spacerL => 24.0;//Medium section separator


  static RoundedRectangleBorder buttonsRadius(radius) => RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(radius.toDouble()));

  static TextStyle? get fsAppbar =>  Theme.of(globalState.currentState!.context).textTheme.headlineSmall;

  static TextStyle? get fsXXBig {
    return Theme.of(globalState.currentState!.context).textTheme.headlineLarge;
  }
   static TextStyle? get fsxBig {
    return Theme.of(globalState.currentState!.context).textTheme.headlineMedium;
  }

     static TextStyle? get fsBig {
    return Theme.of(globalState.currentState!.context).textTheme.displayLarge;
  }
  static TextStyle? get fsMedium {
    return Theme.of(globalState.currentState!.context).textTheme.displayMedium;
  }

  static TextStyle? get fsNormal {
    return Theme.of(globalState.currentState!.context).textTheme.displaySmall;
  }
   static TextStyle? get fsSmall {
    return Theme.of(globalState.currentState!.context).textTheme.bodyMedium;
  }
    static TextStyle? get fsXSmall {
    return Theme.of(globalState.currentState!.context).textTheme.bodySmall;
  }
}
