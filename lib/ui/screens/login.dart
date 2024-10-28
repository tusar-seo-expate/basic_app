import 'package:basic_app/configs/style_config.dart';
import 'package:basic_app/configs/theme_config.dart';
import 'package:basic_app/controllers/auth/auth_controller.dart';
import 'package:basic_app/custom_widgets/auth_ui.dart';
import 'package:basic_app/custom_widgets/buttons.dart';
import 'package:basic_app/custom_widgets/form_model.dart';
import 'package:basic_app/custom_widgets/input_decorations.dart';
import 'package:basic_app/helpers/device_info.dart';
import 'package:basic_app/helpers/main_helper.dart';
import 'package:basic_app/others/t_routes.dart';
import 'package:basic_app/ui/screens/registration.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends GetView<AuthController> {
  const Login({super.key});

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
              getLocal(context).login,
              style: StyleConfig.fsXXBig(context: context),
              textAlign: TextAlign.center,
            ),
          ),

          TFormModel.editTextdWithPrefix(context, controller.emailControllerOfLoginCon.value, getLocal(context).email, Icons.account_circle_rounded, "user@example.com"),
          /*Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: Text(
              getLocal(context).email,
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
                    keyboardType:TextInputType.emailAddress ,
                    controller: controller.emailControllerOfLoginCon.value,
                    autofocus: false,
                    style: StyleConfig.fsMedium(context: context),
                    cursorColor:themeColorAlter ,
                    decoration: InputDecorations.basic(
                        prefixIcon: Icon(
                          Icons.account_circle_rounded,),
                        hint_text: ),
                  ),
                ),
              ],
            ),
          ),*/
         /* Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: Text(
              ,
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
                    controller: ,
                    autofocus: false,
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    style: StyleConfig.fsMedium(context: context),
                    decoration: InputDecorations.basic(
                        prefixIcon: Icon(
                          ,
                        ),
                        hint_text: ),
                  ),
                ),
                /*Button(
                    minWidth: 50,
                    padding: EdgeInsets.zero,
                    child: Text(
                      "forgot password?",
                      style: TextStyle(
                          color: ThemeConfig.blue,
                          fontStyle: FontStyle.italic),

                    ),
                    onPressed: (){
                      //MakeRoute.go(context, PasswordForget());
                    },
                  )*/
              ],
            ),
          ),
          */
          TFormModel.editTextdWithPrefix(context, controller.passwordControllerOfLoginCon.value, getLocal(context).password, Icons.lock, "• • • • • • • •",isPassword: true),

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
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  onPressed: () {
                    controller.loginSubmit(context);
                  }),
            ),
          ),
          Container(
              width: DeviceInfo.width,
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Or",
                style:StyleConfig.fsNormal(context: context),
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
                  child: const Text(
                    "Register Now",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  onPressed: () {
                   TRoutes.go(context,Registration());
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
                      return Registration();
                    }));*/
              },
            ),
          ),*/
        ],
      ),
    ));
  }
}
