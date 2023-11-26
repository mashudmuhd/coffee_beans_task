import 'package:coffee_beans_task/app/controllers/splash_screen_controller.dart';
import 'package:coffee_beans_task/core/style_manager.dart';
import 'package:coffee_beans_task/core/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class SplashScreen extends GetView<SplashScreenController>{
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final SplashScreenController splashController = Get.put(SplashScreenController());
    return Scaffold(body: Center(
      child: Text('Coffeebeans',style:getBoldStyle(fontSize: AppSize.s28)),
    ),);
  }
  
}