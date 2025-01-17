import 'package:basic_app/configs/style_config.dart';
import 'package:basic_app/configs/theme_config.dart';
import 'package:basic_app/controllers/auth/auth_controller.dart';
import 'package:basic_app/custom_widgets/auth_ui.dart';
import 'package:basic_app/custom_widgets/buttons.dart';
import 'package:basic_app/custom_widgets/form_model.dart';
import 'package:basic_app/custom_widgets/input_decorations.dart';
import 'package:basic_app/helpers/device_info.dart';
import 'package:basic_app/helpers/main_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login.dart';

class Registration extends GetView<AuthController> {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    // Provider.of<AuthPresenter>(context, listen: false).setContext(context);
    return AuthScreen.buildScreen(
        context, buildBody(context, DeviceInfo.width)
    );
  }

  Widget buildBody(BuildContext context, double screenWidth) {
    return Obx(() =>  Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: StyleConfig.padding),
      width: screenWidth * (3 / 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: DeviceInfo.width,
            padding: const EdgeInsets.only(bottom: 4.0),
            child: Text(
              getLocal(context).registration,
              style: StyleConfig.fsXXBig(context: context),
              textAlign: TextAlign.center,
            ),
          ),
          TFormModel.editTextdWithPrefix( context,controller.nameControllerOfRegistrationCon.value,getLocal(context).name,Icons.account_circle_rounded, "Mr Jhone"),
          // buildItemModel(iconData:Icons.mail,controller: controller.emailControllerOfRegistrationCon.value,label: "Email",hint: "jhone@example.com",type: TextInputType.emailAddress),
          TFormModel.editTextdWithPrefix(context,controller.phoneControllerOfRegistrationCon.value,getLocal(context).phone_number,Icons.phone_iphone, "+1XXXXXXXX"),
          TFormModel.editTextdWithPrefix( context,controller.passwordControllerOfRegistrationCon.value,getLocal(context).password,Icons.lock , "••••••••••",isPassword: true),
          TFormModel.editTextdWithPrefix(context,controller.retypePasswordControllerOfRegistrationCon.value, getLocal(context).confirm_password,Icons.lock_reset, "••••••••••",isPassword: true),

          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Container(
              height: 45,
              child: Buttons.minSize(
                  width: DeviceInfo.width,
                  height: 50,
                  color: ThemeConfig.primaryBtnColor,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6.0))),
                  child:  Text(
                    getLocal(context).registration,
                    style: StyleConfig.fsMedium(context: context),
                  ),
                  onPressed: () {
                    controller.registrationSubmit(context);
                  }),
            ),
          ),
          Container(
              width: DeviceInfo.width,
              padding: EdgeInsets.only(top: 20),
              child: Text(
                getLocal(context).or,
                style:StyleConfig.fsMedium(context: context),
                textAlign: TextAlign.center,
              )),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Container(
              height: 45,
              child: Buttons.minSize(
                  width: DeviceInfo.width,
                  height: 50,
                  color: ThemeConfig.secondaryBtnColor,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6.0))),
                  child:  Text(
                    getLocal(context).login,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  onPressed: () {
                    Get.to(Login());
                  }),
            ),
          ),
          /*
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Button(
              minWidth: DeviceInfo.width,

              child: Text(
                "Register Now",
                style: TextStyle(
                    color: ThemeConfig.accentColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
              onPressed: () {
               /* Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return Signup();
                    }));*/
              },
            ),
          ),*/
        ],
      ),
    ));
  }

  Column buildItemModel({required BuildContext context,required TextEditingController controller,required String hint,required String label,bool isPasswod = false,TextInputType type = TextInputType.text,required IconData iconData}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: Text(
                label,
                style: StyleConfig.fsMedium(context: context),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 36,
                    child: TextField(
                      keyboardType:type ,
                      controller: controller,
                      autofocus: false,
                      obscureText: isPasswod,
                      decoration: InputDecorations.basic(
                          prefixIcon: Icon(
                            iconData,
                            size: 18,
                            color: ThemeConfig.mediumGrey,
                          ),
                          hint_text: hint),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
  }
}
