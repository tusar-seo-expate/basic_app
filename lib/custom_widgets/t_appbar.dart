
import 'package:basic_app/configs/style_config.dart';
import 'package:flutter/material.dart';

class TAppbar  {

 static AppBar build({required title,PreferredSize? bottom}) {
    return  AppBar(
      title: Text(title,style: StyleConfig.fsAppbar,),
      bottom: bottom,
    );
  }
}
