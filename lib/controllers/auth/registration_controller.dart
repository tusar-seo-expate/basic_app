import 'package:basic_app/custom_widgets/loader.dart';
import 'package:basic_app/custom_widgets/t_toast.dart';
import 'package:basic_app/helpers/auth.dart';
import 'package:basic_app/repositories/auth_repository.dart';
import 'package:basic_app/ui/screens/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

mixin RegistrationController on GetxController{
  //Registration section
  // Rx<TextEditingController> emailControllerOfRegistrationCon = TextEditingController().obs;
  Rx<TextEditingController> nameControllerOfRegistrationCon = TextEditingController().obs;
  Rx<TextEditingController> phoneControllerOfRegistrationCon = TextEditingController().obs;
  Rx<TextEditingController> passwordControllerOfRegistrationCon = TextEditingController().obs;
  Rx<TextEditingController> retypePasswordControllerOfRegistrationCon = TextEditingController().obs;
  registrationSubmit(BuildContext context)async{
    String name =nameControllerOfRegistrationCon.value.text.trim();
    // String email =emailControllerOfRegistrationCon.value.text.trim();
    String phone =phoneControllerOfRegistrationCon.value.text.trim();
    String password =passwordControllerOfRegistrationCon.value.text.trim();
    String re_password =retypePasswordControllerOfRegistrationCon.value.text.trim();

    
    Loader.showGetxLoader;
    var response =await AuthRepository.reg(name,phone,password,re_password);
    Get.back();
    TToast.show(context, response.message);
    if(response.success??false) {
      AuthHelper.setLogin(
          response.data?.token ?? '', response.data?.name ?? '');
      Get.to(IndexPage());
    }

  }
}