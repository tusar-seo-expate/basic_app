import 'dart:async';
import 'package:basic_app/configs/app_config.dart';
import 'package:basic_app/configs/style_config.dart';
import 'package:basic_app/configs/theme_config.dart';
import 'package:basic_app/custom_widgets/boxdecorations.dart';
import 'package:basic_app/helpers/main_helper.dart';
import 'package:basic_app/helpers/shared_value_helper.dart';
import 'package:basic_app/others/t_routes.dart';
import 'package:basic_app/ui/screens/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login.dart';
class Splash extends StatefulWidget {
  Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  checkLogin() async{
    await isLogin.load();
    if(isLogin.$){
      userName.load();
      accessToken.load();
      TRoutes.goAndRemoveAll(context, IndexPage());
    }else {
      TRoutes.goAndRemoveAll(context, Login());
      // Get.offAll(()=>const SurveyPage());
    }
  }


  @override
  void initState() {
    Future.delayed((Duration(seconds: 2)),(){
    TRoutes.goAndRemoveAll(context, IndexPage());

    });
   // checkLogin();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        // textDirection: TextDirection.,
        fit: StackFit.expand,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            width: 150,
            decoration: BoxDecorations.shadow(radius: 8),//.copyWith(color: Colors.red),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image.asset(
                    getAssetLogo("app_logo.jpg"),
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                /*const SizedBox(
                  height: 10,
                ),
                Text(
                  AppConfig.appName,
                  style: TextStyle(
                    fontSize: 25.0,
                    color: ThemeConfig.accentColor
                  ),
                  textAlign: TextAlign.center,
                ),*/
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 150,
                  child: LinearProgressIndicator(
                    minHeight: 5,
                    color: ThemeConfig.accentColor,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Text(
                  AppConfig.appName,
                  style: StyleConfig.fsMedium,
                  textAlign: TextAlign.center,
                ),
                Text(
                  "1.0.0",
                  style: StyleConfig.fsMedium,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
