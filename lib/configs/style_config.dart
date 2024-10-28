import 'package:basic_app/configs/theme_config.dart';
import 'package:basic_app/controllers/app_setting_controller.dart';
import 'package:basic_app/helpers/device_info.dart';
import 'package:basic_app/main.dart';
import 'package:basic_app/ui/screens/settings/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class StyleConfig {
  static  const double padding = 18.0;
  static const double  padding14 =  14.0;

  static double get spacer => 10.0;//Extra Small section separator
  static double get spacerM => 14.0;//Small section separator
  static double get spacerL => 24.0;//Medium section separator


  static RoundedRectangleBorder buttonsRadius(radius) => RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(radius.toDouble()));
  static Color iconColor ({BuildContext? context})=> Get.find<AppSettingController>().themeMode.value==ThemeMode.dark ?ThemeConfig.lightFontColor:ThemeConfig.darkFontColor;

  static TextStyle?  fsAppbar({BuildContext? context}) =>  Theme.of(context??DeviceInfo.context!).textTheme.displayMedium;

  static TextStyle?  fsXXBig({BuildContext? context}) {
    return Theme.of(context??DeviceInfo.context!).textTheme.displayLarge;
  }
   static TextStyle?  fsxBig({BuildContext? context}) {
    return Theme.of(context??DeviceInfo.context!).textTheme.displayMedium;
  }

     static TextStyle?  fsBig({BuildContext? context}) {
    return Theme.of(context??DeviceInfo.context!).textTheme.bodyLarge;
  }
  static TextStyle?  fsMedium({BuildContext? context}) {
    return Theme.of(context??DeviceInfo.context!).textTheme.bodyMedium;
  }

  static TextStyle?  fsNormal({BuildContext? context}) {
    return Theme.of(context??DeviceInfo.context!).textTheme.displaySmall;
  }
   static TextStyle?  fsSmall({BuildContext? context}) {
    return Theme.of(context??DeviceInfo.context!).textTheme.titleMedium;
  }
    static TextStyle?  fsXSmall({BuildContext? context}) {
    return Theme.of(context??DeviceInfo.context!).textTheme.titleSmall;
  }
}
