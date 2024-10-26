import 'package:basic_app/controllers/app_setting_controller.dart';
import 'package:basic_app/controllers/auth/auth_controller.dart';
import 'package:basic_app/controllers/index_controller.dart';
import 'package:get/get.dart';

class BindsControllers extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthController());
    Get.put(IndexController());
    Get.put(AppSettingController());
    // TODO: implement dependencies
  }
}
