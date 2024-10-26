
import 'package:basic_app/custom_models/key_value_model.dart';
import 'package:basic_app/others/const_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppSettingController extends GetxController{
  Rx<ThemeMode> themeMode = Rx<ThemeMode>(ThemeMode.light);
  Rx<KeyValueModel<String>> appLang = Rx(ConstData.languages.first);

  updateLang(KeyValueModel<String> data){
  appLang.value  = data;
  }

  updateThemeMode(ThemeMode mode){
    themeMode.value = mode;
  }
}