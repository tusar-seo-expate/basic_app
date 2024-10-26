import 'package:basic_app/configs/theme_config.dart';
import 'package:basic_app/controllers/index_controller.dart';
import 'package:basic_app/ui/screens/account_page.dart';
import 'package:basic_app/ui/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IndexPage extends GetView<IndexController> {
   IndexPage({super.key});
  @override
  Widget build(BuildContext context) {
   return Obx(() {
       return Scaffold(
          body: body(),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.currentIndex.value,
            selectedItemColor: ThemeConfig.accentColor,
            unselectedItemColor: ThemeConfig.grey,
            onTap: (index){
              controller.updateCurrentIndex(index);
            },
            items:const [
              BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.apps),label: "Survey"),
              BottomNavigationBarItem(icon: Icon(Icons.receipt_long),label: "Offline data"),
              BottomNavigationBarItem(icon: Icon(Icons.account_circle_sharp),label: "Accounts"),
            ],

          ),
        );
     }
   );
  }

  body(){
    switch(controller.currentIndex.value){
      case 0:
        return HomePage();
      // case 1: return Tickets()  ;
      // case 1: return SurveyPage();
      // case 2: return OfflinePage();
      case 3: return AccountPage();
    }
  }
}
