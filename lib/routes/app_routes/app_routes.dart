part of '../app_pages/app_pages.dart';

abstract class Routes {
  static const SPLASH_SCREEN = _Paths.SPLASH_SCREEN;
  static const HOME_SCREEN = _Paths.HOME_SCREEN;
  static const EMAILBODY_SCREEN = _Paths.EMAILBODY_SCREEN;

}

abstract class _Paths {
  static const HOME_SCREEN = '/home-screen';
  static const EMAILBODY_SCREEN = '/email_body_screen';
  static const SPLASH_SCREEN = '/splash_screen';
}