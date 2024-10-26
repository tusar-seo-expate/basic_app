import 'dart:io';
import 'package:basic_app/configs/theme_config.dart';
import 'package:basic_app/helpers/main_helper.dart';
import 'package:basic_app/main.dart';
import 'package:flutter/material.dart';




class ImageView extends StatelessWidget {
  const ImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }


  static networkSimple(String link,{double? width, double? height,Color? color}){
    return Image.network(link,width:width,height: height,color: color ,);
  }
  static assetSimple(String link,{double? width, double? height,Color? color}){
    return Image.asset(link,width:width,height: height,color: color ,);
  }

  static assetIcon(String image)=>assetSimple(image,width: 24,height: 24,color: Theme.of(globalState.currentState!.context).iconTheme.color);

static Widget assetCircle({required String assetUrl,required double height , required double width, Color? color,Color? imageColor}){
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        image: DecorationImage(image: AssetImage(assetUrl),fit: BoxFit.contain),
        borderRadius: BorderRadius.circular(height*0.5),

      ),
    );
  }
static Widget networkCircle({required String imageUrl,required double height , required double width, Color? color,Color? imageColor}){
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        image:imageUrl.isEmpty ?DecorationImage(image: AssetImage(getAssetLogo("logo.png"))): DecorationImage(image: NetworkImage(imageUrl),),
        borderRadius: BorderRadius.circular(height*0.5),
        border: Border.all(color: ThemeConfig.grey,width: 2)
      ),
    );
  }

static Widget network({required String? imageUrl,required double height , required double width }){
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        image:imageUrl ==null || imageUrl.isEmpty ?DecorationImage(image: AssetImage(getAssetLogo("logo.png"))): DecorationImage(image: NetworkImage(imageUrl),),
        borderRadius: BorderRadius.circular(height*0.5),
        border: Border.all(color: ThemeConfig.grey,width: 2)
      ),
    );
  }
static Widget fileCircle({required File imageFile,required double height , required double width, Color? color,Color? imageColor}){
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        image: DecorationImage(image: FileImage(imageFile)),
        borderRadius: BorderRadius.circular(height*0.5)
      ),
    );
  }

  static Widget fileSquire({required File imageFile,required double size , Color? color,Color? imageColor}){
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
          color: color,
          image: DecorationImage(image: FileImage(imageFile)),
          borderRadius: BorderRadius.circular(5)
      ),
    );
  }

}
