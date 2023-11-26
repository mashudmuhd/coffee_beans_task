
import 'package:coffee_beans_task/app/bindings/email_body_screen_binding/email_body_screen_binding.dart';
import 'package:coffee_beans_task/app/bindings/home_screen_binding/home_screen_bindings.dart';
import 'package:coffee_beans_task/screens/home_screen/home_screen.dart';
import 'package:get/get.dart';

import '../../screens/email_body_screen/email_body_scree.dart';
part '../app_routes/app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME_SCREEN,
      page: () =>  const HomeScreen(),
      binding: HomeScreenBinding(),
    ),
    GetPage(
      name: _Paths.EMAILBODY_SCREEN,
      page: () =>   EmailBodyScreen(),
      binding: EmailBodyScreenBinding(),
    ),

  ];
}