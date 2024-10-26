import 'package:basic_app/configs/style_config.dart';
import 'package:basic_app/configs/theme_config.dart';
import 'package:basic_app/controllers/auth/auth_controller.dart';
import 'package:basic_app/custom_widgets/auth_ui.dart';
import 'package:basic_app/custom_widgets/buttons.dart';
import 'package:basic_app/custom_widgets/input_decorations.dart';
import 'package:basic_app/helpers/device_info.dart';
import 'package:basic_app/helpers/main_helper.dart';
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
              style: StyleConfig.fsXXBig,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: Text(
              getLocal(context).email,
              style: StyleConfig.fsMedium,
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
                    decoration: InputDecorations.basic(
                        prefixIcon: Icon(
                          Icons.account_circle_rounded,
                          size: 18,
                          color: ThemeConfig.mediumGrey,
                        ),
                        hint_text: "user@example.com"),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: Text(
              getLocal(context).password,
              style: StyleConfig.fsMedium,
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
                    controller: controller.passwordControllerOfLoginCon.value,
                    autofocus: false,
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecorations.basic(
                        prefixIcon: Icon(
                          Icons.lock,
                          size: 18,
                          color: ThemeConfig.mediumGrey,
                        ),
                        hint_text: "• • • • • • • •"),
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

          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Container(
              height: 45,
              child: Buttons.minSize(
                  width: DeviceInfo.width,
                  height: 50,
                  color: ThemeConfig.accentColor,
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
                style:StyleConfig.fsNormal,
                textAlign: TextAlign.center,
              )),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Container(
              height: 45,
              child: Buttons.minSize(
                  width: DeviceInfo.width,
                  height: 50,
                  color: ThemeConfig.secondaryColor,
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

                    Get.to(Registration());
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
