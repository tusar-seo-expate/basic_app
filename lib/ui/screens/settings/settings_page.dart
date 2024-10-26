import 'package:basic_app/configs/style_config.dart';
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
      appBar: TAppbar.build(title: getLocal(context).settings),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: StyleConfig.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 14,),
            Text(getLocal(context).app_settings,style: StyleConfig.fsBig,),
            buildAppSettingsItem(context,getLocal(context).privacy,Icons.lock,Container()),
            Divider(),
            buildAppSettingsItem(context,getLocal(context).appearance,Icons.change_circle_outlined,AppearancePage()),
            Divider(),
            buildAppSettingsItem(context,getLocal(context).language,Icons.translate,LanguagePage()),
            Divider(),

          ],
        ),
      ),
    );
  }

  Padding buildAppSettingsItem(BuildContext context,String title,IconData data,Widget goto) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){
          TRoutes.go(context, goto);
        },
        child: Row(
          children: [
            Icon(data,size: 18,),
            SizedBox(width: 10,),
            Text(title,style: StyleConfig.fsMedium,),

            Spacer(),
            Icon(Icons.arrow_forward_ios,size: 18,)
          ],
        ),
      ),
    );
  }

}
