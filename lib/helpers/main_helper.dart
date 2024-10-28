
import 'dart:io';
import 'package:basic_app/configs/app_config.dart';
import 'package:basic_app/configs/theme_config.dart';
import 'package:basic_app/helpers/shared_value_helper.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

bool isEmail(String input){
  return RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$').hasMatch(input);
}
getAssetImage(String img){
  return "assets/images/$img";
}
getAssetIcon(String icon){
  return "assets/icons/$icon";
}
getAssetLogo(String logo){
  return "assets/logos/$logo";
}
getAssetFlag(String name){
  return "assets/flags/$name";
}


String getAPI (String path) {
  if(path.startsWith("/")){
    return  AppConfig.apiUrl + path;
  }
  return "${AppConfig.apiUrl}/$path";

}

Map<String,String> getCommonHeader(){
  return {
    "Accept": "application/json",
    "Content-Type": "application/json",
    // "App-Language": app_language.$,
    // "Stock-Location-Id":stock_location_id.$
  };
}Map<String,String> get getAuthHeader=>
{
"Authorization": "Bearer ${accessToken.$}",
};

double getWidth(BuildContext context)=>  MediaQuery.of(context).size.width;
double getHeight(BuildContext context)=>  MediaQuery.of(context).size.height;

Future<FilePickerResult?> pickSingleFile() async {
  return await FilePicker.platform
      .pickFiles(type: FileType.custom, allowedExtensions: [
    "jpg",
    "jpeg",
    "png",
    "svg",
    "webp",
    "gif",
    "mp4",
    "mpg",
    "mpeg",
    "webm",
    "ogg",
    "avi",
    "mov",
    "flv",
    "swf",
    "mkv",
    "wmv",
    "wma",
    "aac",
    "wav",
    "mp3",
    "zip",
    "rar",
    "7z",
    "doc",
    "txt",
    "docx",
    "pdf",
    "csv",
    "xml",
    "ods",
    "xlr",
    "xls",
    "xlsx"
  ]);
}

Future<File?> pickAFile(context) async {
  FilePickerResult? file = await pickSingleFile();
  if(file !=null) {
    return File(file.files.first.path!);
  }
  return null;
}

 get numFormatter => TextInputFormatter.withFunction((oldValue, newValue){
   if(newValue.text.isNum){
     return newValue;
   }if(newValue.text.isEmpty){
     return TextEditingValue(text: "0");
   }

   return oldValue;
 });

TextInputFormatter  numFormatterWithMaxValue(int maxValue) => TextInputFormatter.withFunction((oldValue, newValue){
   if(newValue.text.isNum && int.parse(newValue.text) <=maxValue){
     return newValue;
   }else if(newValue.text.isEmpty){
     return newValue.copyWith(text: "0");
   }
   return oldValue;
 });
TextInputFormatter  pureIntWithMaxValue(int maxValue) => TextInputFormatter.withFunction((oldValue, newValue){
  var exp = RegExp(r'^[0-9]+$');

  if(exp.hasMatch(newValue.text) && newValue.text.length<=maxValue){
    return newValue;
  }else if(newValue.text.isEmpty){
    return newValue.copyWith(text: "");
  }
  return oldValue;
});
TextInputFormatter  nameFormatter() => TextInputFormatter.withFunction((oldValue, newValue){
  var exp = RegExp(r'^[a-zA-Z -]+$');


  if(exp.hasMatch(newValue.text)){
    return newValue;
  }else if(newValue.text.isEmpty){
    return newValue.copyWith(text: "");
  }
  return oldValue;
});
TextInputFormatter  addressFormatter() => TextInputFormatter.withFunction((oldValue, newValue){
  var exp = RegExp(r'^[a-zA-Z0-9 ]+$');


  if(exp.hasMatch(newValue.text)){
    return newValue;
  }else if(newValue.text.isEmpty){
    return newValue.copyWith(text: "");
  }
  return oldValue;
});


AppLocalizations getLocal(BuildContext context)=>AppLocalizations.of(context)!;


Color get themeColor=>appThemeIsDark.$?ThemeConfig.darkFontColor:ThemeConfig.lightFontColor;
Color get themeColorAlter=>appThemeIsDark.$?ThemeConfig.lightFontColor:ThemeConfig.darkFontColor;


