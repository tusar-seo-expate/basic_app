
import 'package:basic_app/custom_models/key_value_model.dart';
import 'package:basic_app/helpers/shared_value_helper.dart';
import 'package:basic_app/others/const_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppSettingController extends GetxController{
  Rx<ThemeMode> themeMode = Rx<ThemeMode>(ThemeMode.light);
  Rx<KeyValueModel<String>> appLang = Rx(ConstData.languages.firstWhere((element) => element.key==appLanguage.$,orElse:()=>ConstData.languages.first ),);


  init()async{
   await appThemeIsDark.load();
  await  appLanguage.load();
    themeMode.value =appThemeIsDark.$?ThemeMode.dark :(ThemeMode.light);
    appLang.value =ConstData.languages.firstWhere((element) => element.key==appLanguage.$,orElse:()=>ConstData.languages.first );
  }

  updateLang(KeyValueModel<String> data){
  appLang.value  = data;
  appLanguage.$=data.key;
  }

  updateThemeMode(ThemeMode mode){
    themeMode.value = mode;
    appThemeIsDark.$ = (mode == ThemeMode.dark);
  }
}