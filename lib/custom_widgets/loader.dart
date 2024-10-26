import 'package:basic_app/configs/style_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Loader {
  static BuildContext? context;

  static show(BuildContext context) {
    return showDialog(
        context: context,
        builder: (alertContext) {
          Loader.context = alertContext;
          return AlertDialog(
            content: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircularProgressIndicator(),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Loading...",
                  style: StyleConfig.fsBig,
                ),
              ],
            ),
          );
        });
  }

  static hide() {
    Navigator.pop(context!);
  }

  static get showGetxLoader => Get.defaultDialog(
      title: "Please wait...",
      content:const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           CircularProgressIndicator(),
          SizedBox(
            width: 10,
          ),
          /*Text(
            "Loading...",
            style: StyleConfig.fs16,
          ),*/
        ],
      ));
}
