import 'package:basic_app/configs/theme_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:toast/toast.dart';
import '../configs/style_config.dart';

class TToast {
  static show(BuildContext context, message,
      {gravity=Toast.center,duration = 4}
      ) {
     ToastContext().init(context);
    Toast.show(message.toString(), backgroundColor: ThemeConfig.white,textStyle: StyleConfig.fsMedium?.copyWith(fontWeight: FontWeight.normal),border: Border.all(width: 1,color: ThemeConfig.grey,),gravity: gravity,duration: duration);
  }
}
