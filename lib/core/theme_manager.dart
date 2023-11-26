import 'package:coffee_beans_task/core/style_manager.dart';
import 'package:coffee_beans_task/core/values_manager.dart';
import 'package:flutter/material.dart';
import 'color_manager.dart';
import 'font_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
      primaryColor: ColorManager.primary,
      primaryColorLight: ColorManager.primaryOpacity70,
      primaryColorDark: ColorManager.darkPrimary,
      disabledColor: ColorManager.grey1,
      splashColor: ColorManager.primaryOpacity70,
      cardTheme: CardTheme(
        color: ColorManager.white,
        shadowColor: ColorManager.grey,
        elevation: AppSize.s4,
      ),
      appBarTheme: AppBarTheme(
        centerTitle: true,
        color: ColorManager.primary,
        elevation: AppSize.s4,
        shadowColor: ColorManager.primaryOpacity70,
        titleTextStyle: getRegularStyle(
          fontColor: ColorManager.white,
          fontSize: FontSize.s16,
        ),
      ),
      buttonTheme: ButtonThemeData(
          shape: const StadiumBorder(),
          disabledColor: ColorManager.grey,
          buttonColor: ColorManager.primary,
          splashColor: ColorManager.primaryOpacity70),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              textStyle: getRegularStyle(fontColor: ColorManager.white),
              backgroundColor: ColorManager.primary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSize.s12)))),
      textTheme: TextTheme(
          headline1: getSemiBoldStyle(fontColor: ColorManager.darkGrey),
          subtitle1: getMediumStyle(
              fontColor: ColorManager.lightGrey, fontSize: FontSize.s14),
          caption: getRegularStyle(fontColor: ColorManager.grey1),
          bodyText1: getRegularStyle(fontColor: ColorManager.grey)),
      inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.all(AppPadding.p8),
          hintStyle: getRegularStyle(fontColor: ColorManager.grey1),
          labelStyle: getMediumStyle(fontColor: ColorManager.darkGrey),
          enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: ColorManager.grey, width: AppSize.s4),
              borderRadius:
                  const BorderRadius.all(Radius.circular(AppSize.s4))),
          focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: ColorManager.primary, width: AppSize.s4),
              borderRadius:
                  const BorderRadius.all(Radius.circular(AppSize.s4))),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorManager.error,
                width: AppSize.s4,
              ),
              borderRadius:
                  const BorderRadius.all(Radius.circular(AppSize.s8))),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorManager.primary,
                width: AppSize.s8,
              ),
              borderRadius:
                  const BorderRadius.all(Radius.circular(AppSize.s8))),
          errorStyle: getRegularStyle(fontColor: ColorManager.error)));
}
