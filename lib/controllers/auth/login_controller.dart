import 'dart:convert';
import 'package:basic_app/custom_widgets/loader.dart';
import 'package:basic_app/helpers/auth.dart';
import 'package:basic_app/repositories/auth_repository.dart';
import 'package:basic_app/ui/screens/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../custom_widgets/t_toast.dart';


mixin LoginController on GetxController{
  Rx<TextEditingController> emailControllerOfLoginCon = TextEditingController().obs;
  Rx<TextEditingController> passwordControllerOfLoginCon = TextEditingController().obs;


  loginSubmit(BuildContext context)async{
    String email =emailControllerOfLoginCon.value.text.trim();
    String password =passwordControllerOfLoginCon.value.text.trim();
    String body = jsonEncode({
      "email":email,
      "password":password
    });
    Loader.showGetxLoader;
    await Future.delayed(Duration(seconds: 3));
    var response =await AuthRepository.login(email,password);
    Get.back();
    var message = response.message;

    TToast.show(context, response.message);
    if(response.success??false) {
      AuthHelper.setLogin(
          response.data?.token ?? "", response.data?.name ?? "");
      Get.to(IndexPage());
    }

  }

}