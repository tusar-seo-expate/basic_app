
import 'package:get/get.dart';

class IndexController extends GetxController{
  RxInt currentIndex =0.obs;
  // Rx<PackageInfo> packageInfo = Rx(PackageInfo(
  //   appName: AppConfig.appName,
  //   packageName: 'Unknown',
  //   version: 'Unknown',
  //   buildNumber: 'Unknown',
  // ));


  updateCurrentIndex(int value){
    currentIndex.value=value;
  }


  // Future<void> initPackageInfo() async {
  //    packageInfo.value= await PackageInfo.fromPlatform();
  //
  // }



}

