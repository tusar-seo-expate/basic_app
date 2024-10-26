
import 'package:basic_app/controllers/app_setting_controller.dart';
import 'package:basic_app/custom_widgets/t_appbar.dart';
import 'package:basic_app/helpers/main_helper.dart';
import 'package:basic_app/others/const_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LanguagePage extends GetView<AppSettingController> {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: TAppbar.build(title: getLocal(context).language),
      body:ListView.separated(itemBuilder:(context,index)=>Text(ConstData.languages[index].value), separatorBuilder: (context,index)=>SizedBox(height: 14,), itemCount: ConstData.languages.length
      ),
    );
  }
}
