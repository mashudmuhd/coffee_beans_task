import 'package:coffee_beans_task/app/controllers/splash_screen_controller.dart';
import 'package:get/get.dart';

class SplashScreenBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<SplashScreenController>(() => SplashScreenController());
  }

}