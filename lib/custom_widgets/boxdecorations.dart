import 'package:basic_app/configs/theme_config.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BoxDecorations{
  static BoxDecoration basic(){
    return BoxDecoration(
      color: ThemeConfig.white,
       border:Border.all(
        color: ThemeConfig.lightGrey,
        width: 1) ,
        borderRadius: const BorderRadius.all(
          const Radius.circular(2.0),
        )
    );
  }
  static BoxDecoration image({required String url,radius =0}){
    return BoxDecoration(
            borderRadius:  BorderRadius.all(
           Radius.circular(double.parse(radius.toString())),
        ),
      image:DecorationImage(
          image: CachedNetworkImageProvider(url),
          fit: BoxFit.cover
      ),
    );
  }
  static BoxDecoration shadow({double radius=0.0, }){
    return BoxDecoration(
      borderRadius : BorderRadius.all(Radius.circular(radius)),
      boxShadow : [
        BoxShadow(
          color: ThemeConfig.xlightGrey.withOpacity(0.5),
          offset: Offset(0,1),
          blurRadius: 2
      )],
      color : ThemeConfig.white,
    );
  }

  static BoxDecoration customRadius({required BorderRadiusGeometry radius,Color? color,BoxBorder? border }){
    return BoxDecoration(
      borderRadius : radius,
      boxShadow : [
        BoxShadow(
          color: ThemeConfig.xlightGrey.withOpacity(0.5),
          offset: Offset(0,1),
          blurRadius: 2
      )],
      color : color,
      border: border
    );
  }

}