import 'package:basic_app/binds_controllers.dart';
import 'package:basic_app/configs/app_config.dart';
import 'package:basic_app/configs/theme_mode.dart';
import 'package:basic_app/controllers/app_setting_controller.dart';
import 'package:basic_app/helpers/device_info.dart';
import 'package:basic_app/helpers/shared_value_helper.dart';
import 'package:basic_app/ui/screens/splash.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shared_value/shared_value.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  BindsControllers().dependencies();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(
      SharedValue.wrapApp(MyApp())
  );
}

GlobalKey<NavigatorState> globalState = GlobalKey<NavigatorState>();



class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  void initState() {
    // TODO: implement initState
    Get.find<AppSettingController>().init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    DeviceInfo.initInfo= context;



     return Obx( () {
         return MaterialApp(
          debugShowCheckedModeBanner: false,
          navigatorKey: globalState,
          themeMode:Get.find<AppSettingController>().themeMode.value ,
          theme: AppThemeMode.light,
          darkTheme: AppThemeMode.dark,
          title: AppConfig.appName,
           localizationsDelegates: [
             GlobalMaterialLocalizations.delegate,
             GlobalWidgetsLocalizations.delegate,
             GlobalCupertinoLocalizations.delegate,
             AppLocalizations.delegate
           ],
           supportedLocales: [
             Locale('en'), // English
             Locale('is'), // Spanish
           ],
           // locale:Locale(state.selectedLang.key),
           home: Splash(),
             );
       }
     );
  }
}
