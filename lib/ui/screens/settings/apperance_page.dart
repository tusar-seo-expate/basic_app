
import 'package:basic_app/configs/style_config.dart';
import 'package:basic_app/configs/theme_config.dart';
import 'package:basic_app/controllers/app_setting_controller.dart';
import 'package:basic_app/custom_widgets/t_appbar.dart';
import 'package:basic_app/helpers/main_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AppearancePage extends GetView<AppSettingController> {
  const AppearancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: TAppbar.build(context: context,title: getLocal(context).appearance),
      body:Obx(() =>Padding(
        padding: const EdgeInsets.all(StyleConfig.padding),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                    flex: 10,
                    child: Text(getLocal(context).dark_mode,style: StyleConfig.fsMedium(context: context),)),
                Flexible(
                    flex: 2,child: Switch(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  activeColor: ThemeConfig.accentColor,
                  value: controller.themeMode.value==ThemeMode.dark,
                  onChanged: (value){
                    ThemeMode mode = ThemeMode.light;
                    if(value){
                      mode = ThemeMode.dark;
                    }
                    controller.updateThemeMode(mode);
                  },

                ))
              ],
            ),
          ],
        ),
      )) ,
    );
  }
}
