import 'package:coffee_beans_task/routes/app_pages/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/color_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coffee Beans Task',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: ColorManager.primary),
        useMaterial3: true,
      ),
      initialRoute:  AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
