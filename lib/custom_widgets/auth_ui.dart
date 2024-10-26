import 'package:basic_app/helpers/device_info.dart';
import 'package:basic_app/helpers/main_helper.dart';
import 'package:flutter/material.dart';

import '../configs/style_config.dart';


class AuthScreen{
  static Widget buildScreen(BuildContext context,Widget child){
    return Scaffold(
      backgroundColor: Colors.white,
      body:Container(
        alignment: Alignment.center,
        height: DeviceInfo.height,
        decoration: BoxDecoration(
          /*image: DecorationImage(image: AssetImage(getAssetImage("background.png")
          ),
            opacity: 0.12,
            fit: BoxFit.cover
            // colorFilter: ColorFilter.mode(Colors.red.withOpacity(0.5), BlendMode.clear)
          )*/
        ),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(

                  [
                Padding(
                  padding: const EdgeInsets.only(top: 48.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(

                        // color: Colors.red,
                        padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 12),
                        width: 250,
                        height: 250,

                        child:Image.asset(getAssetLogo("app_logo.jpg"),fit: BoxFit.fill) ,
                      ),
                    ],
                  ),
                ),
                Container(
                  // alignment: Alignment.center,
                    padding:  EdgeInsets.symmetric(vertical: StyleConfig.padding),
                    child: child,),
              ],
              ),
            )
          ],
        ),
      ),
    );
  }

}


