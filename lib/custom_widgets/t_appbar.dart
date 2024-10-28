
import 'package:basic_app/configs/style_config.dart';
import 'package:flutter/material.dart';

class TAppbar  {

 static AppBar build({required BuildContext context,required title,PreferredSize? bottom}) {
    return  AppBar(
      title: Text(title,style: StyleConfig.fsAppbar(context:  context),),
      bottom: bottom,
    );
  }
}
