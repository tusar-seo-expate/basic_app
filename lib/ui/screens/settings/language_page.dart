
import 'package:basic_app/configs/style_config.dart';
import 'package:basic_app/configs/theme_config.dart';
import 'package:basic_app/controllers/app_setting_controller.dart';
import 'package:basic_app/custom_widgets/boxdecorations.dart';
import 'package:basic_app/custom_widgets/buttons.dart';
import 'package:basic_app/custom_widgets/image_view.dart';
import 'package:basic_app/custom_widgets/t_appbar.dart';
import 'package:basic_app/helpers/main_helper.dart';
import 'package:basic_app/helpers/shared_value_helper.dart';
import 'package:basic_app/others/const_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LanguagePage extends GetView<AppSettingController> {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    print(appLanguage.$);
    return  Scaffold(
      appBar: TAppbar.build(context:  context,title: getLocal(context).language),
      body:ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: StyleConfig.padding,vertical: StyleConfig.padding),
          itemBuilder:(context,index)=>languageModel(context,index), separatorBuilder: (context,index)=>SizedBox(height: 14,), itemCount: ConstData.languages.length
      ),
    );
  }

  languageModel(BuildContext context,int index){
    print(controller.appLang.value.key);
    print(appLanguage.$);
    return Obx(() {
        return Buttons(
          minHeight: 50.0,
          minWidth: 20.0,
          color: ThemeConfig.white,
          padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
          shape:RoundedRectangleBorder(
            side: BorderSide(color: ThemeConfig.grey,width: 1),
          ),
          onPressed: (){
            controller.updateLang(ConstData.languages[index]);

          }
          ,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(ConstData.languages[index].value,style:StyleConfig.fsMedium(context: context),),
              if(controller.appLang.value.key == ConstData.languages[index].key)
                Container(
                  height: 30,
                  width: 30,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color:ThemeConfig.green,
                  ),
                  child: ImageView.assetSimple(getAssetIcon("check.png"),color: ThemeConfig.white),
                )
            ],
          ),
        );
      }
    );
  }
}
