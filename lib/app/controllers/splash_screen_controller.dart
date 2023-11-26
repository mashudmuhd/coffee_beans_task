import 'package:coffee_beans_task/routes/app_pages/app_pages.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController{
  @override
  void onInit() {
    super.onInit();
    // Use Future.delayed in for a delay
    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed(Routes.HOME_SCREEN);
    });
  }

}