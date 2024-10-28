import 'package:basic_app/configs/app_config.dart';
import 'package:basic_app/configs/style_config.dart';
import 'package:basic_app/controllers/index_controller.dart';
import 'package:basic_app/custom_widgets/boxdecorations.dart';
import 'package:basic_app/helpers/main_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomePage extends GetView<IndexController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: getHeight(context),
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          //decoration: BoxDecorations.shadow(radius: 8),//.copyWith(color: Colors.red),
          child:Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset(
                      getAssetLogo("app_logo.png"),
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              Text(AppConfig.appName,
                style: StyleConfig.fsMedium(context: context),
                // style: StyleConfig.fsMedium(context: context),
              ),
              SizedBox(height: 10,),
            ],
          )

      ),
    );
  }
}
