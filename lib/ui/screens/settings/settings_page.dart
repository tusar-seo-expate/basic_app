import 'package:basic_app/configs/style_config.dart';
import 'package:basic_app/custom_widgets/image_view.dart';
import 'package:basic_app/custom_widgets/t_appbar.dart';
import 'package:basic_app/helpers/main_helper.dart';
import 'package:basic_app/others/t_routes.dart';
import 'package:basic_app/ui/screens/settings/apperance_page.dart';
import 'package:basic_app/ui/screens/settings/language_page.dart';
import 'package:flutter/material.dart';


class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppbar.build(context: context,title: getLocal(context).settings),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: StyleConfig.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
/*
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 14.0),
              child: Text(getLocal(context).app_settings,style: StyleConfig.fsBig(context: context),),
            ),*/
            SizedBox(height: 10,),
            buildAppSettingsItem(context,getLocal(context).privacy,getAssetIcon("unlock.png"),Container()),
            Divider(color: Colors.grey,),
            buildAppSettingsItem(context,getLocal(context).appearance,getAssetIcon("mode.png"),AppearancePage()),
            Divider(color: Colors.grey,),
            buildAppSettingsItem(context,getLocal(context).language,getAssetIcon("translate.png"),LanguagePage()),
            // Divider(color: Colors.grey,),

          ],
        ),
      ),
    );
  }

  Padding buildAppSettingsItem(BuildContext context,String title,String data,Widget goto) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){
          TRoutes.go(context, goto);
        },
        child: Row(
          children: [
            ImageView.assetIcon(context,data),
            SizedBox(width: 10,),
            Text(title,style: StyleConfig.fsMedium(context: context),),

            Spacer(),
            ImageView.assetIcon(context,getAssetIcon("next_light.png"))
          ],
        ),
      ),
    );
  }

}
