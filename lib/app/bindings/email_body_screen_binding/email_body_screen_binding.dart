import 'package:coffee_beans_task/app/controllers/home_screen_controller.dart';
import 'package:get/get.dart';

class EmailBodyScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<HomeScreenController>(() => HomeScreenController());
  }

}