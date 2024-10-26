
import 'package:basic_app/configs/style_config.dart';
import 'package:basic_app/configs/theme_config.dart';
import 'package:basic_app/custom_widgets/boxdecorations.dart';
import 'package:basic_app/custom_widgets/buttons.dart';
import 'package:basic_app/custom_widgets/image_view.dart';
import 'package:basic_app/custom_widgets/t_appbar.dart';
import 'package:basic_app/custom_widgets/t_dialogs.dart';
import 'package:basic_app/helpers/auth.dart';
import 'package:basic_app/helpers/main_helper.dart';
import 'package:basic_app/helpers/shared_value_helper.dart';
import 'package:basic_app/others/t_routes.dart';
import 'package:basic_app/ui/screens/login.dart';
import 'package:basic_app/ui/screens/settings/settings_page.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';


class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppbar.build(title: "Account"),
      body: body(context),
    );
  }

  Widget body(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Container(
            height: 60,
            width: getWidth(context),
            decoration: BoxDecorations.customRadius(
                radius: BorderRadius.only(bottomRight: Radius.circular(0)),
                color: ThemeConfig.accentColor),
            padding: EdgeInsets.symmetric(
                horizontal: StyleConfig.padding, vertical: 10),
            child: isLogin.$
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageView.assetCircle(
                        assetUrl: getAssetIcon("profile.png"),
                        height: 80,
                        width: 80,
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Flexible(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              userName.$,
                              style: StyleConfig.fsMedium,
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Buttons(
                        onPressed: () {
                          //Get.to(ProfileUpdate());
                        },
                        minWidth: 60,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        shape: StyleConfig.buttonsRadius(8).copyWith(
                            side:
                                BorderSide(width: 1, color: ThemeConfig.white)),
                        child: Text(
                          "Edit Profile",
                          style: StyleConfig.fsMedium,
                        ),
                      )
                    ],
                  )
                : Row(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45),
                          color: ThemeConfig.extraDarkGrey,
                          // border: Border.all(color: Colors.black)
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                        child: Image.asset(
                          getAssetIcon("profile.png"),
                          color: ThemeConfig.lightGrey,
                        ),
                      ),

                    ],
                  ),
          ),
        ),
        //SizedBox(height: 20,),

        Expanded(
          flex: 5,
          child: Container(
            padding: EdgeInsets.only(
              left: StyleConfig.padding,
              right: StyleConfig.padding,
            ),
            decoration: BoxDecorations.customRadius(
                radius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                color: ThemeConfig.white),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  optionModel(context,getLocal(context).settings, getAssetIcon("setting.png"), SettingsPage()),

                  IconButton(
                      onPressed: () {
                        Dialogs.dynamicYesNo(
                            context: context,
                            title: "নিশ্চিত করুন",
                            no: "না",
                            yes: "হ্যাঁ",
                            content: "আপনি কি লগআউট করেতে চাচ্ছেন?",
                            yesOnClick: () {
                              AuthHelper.setLogout();
                              Get.offAll(Login());
                            });
                      },
                      icon: Row(
                        children: [
                          Icon(Icons.logout),
                          Text("Logout"),
                        ],
                      )),
                ],
              ),
            ),
          ),
        ),
        // Center(child: Text("Account Page ${controller.mm}")),
      ],
    );
  }

  Widget optionModel(BuildContext context,String title, String logo, Widget route) {
    return Container(
      margin: EdgeInsets.only(bottom: StyleConfig.spacerL),
      height: 40,
      child: Buttons(
        minWidth: 40,
        onPressed: () {
          TRoutes.go(context, route);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ImageView.assetIcon(logo),
            const SizedBox(
              width: 26,
            ),
            Text(
              title,
              style: StyleConfig.fsMedium,
            ),
            const Spacer(),
            // Image.asset(getAssetIcon("next.png"), width: 14,
            //     height: 14,
            //     color: ThemeConfig.fontColor),
          ],
        ),
      ),
    );
  }

  Widget logoutModel(String title, String logo, dynamic onPress) {
    return Container(
      margin: EdgeInsets.only(bottom: StyleConfig.padding),
      height: 40,
      child: Buttons(
        minWidth: 40,
        onPressed: onPress,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 18,
              width: 18,
              child: Image.asset(logo,
                  width: 18, height: 18, color: ThemeConfig.extraDarkGrey),
            ),
            const SizedBox(
              width: 26,
            ),
            Text(
              title,
              style: StyleConfig.fsMedium,
            ),
            const Spacer(),
            // Image.asset(getAssetIcon("next.png"), width: 14,
            //     height: 14,
            //     color: ThemeConfig.fontColor),
          ],
        ),
      ),
    );
  }
}
