import 'dart:ui';
import 'package:flutter/material.dart';
import 'font_manager.dart';

TextStyle _getTextStyle (
    {double? fontSize,
      String? fontFamily,
      Color? fontColor=Colors.black,
      FontWeight? fontWeight}) {
  return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: fontColor,fontFamily: fontFamily);
}


TextStyle getRegularStyle({double fontSize= FontSize.s16, Color fontColor=Colors.black}){
  return _getTextStyle(fontSize: fontSize,fontFamily: FontConstants.fontFamily,fontWeight: FontWeightManager.regular,fontColor: fontColor);
}

TextStyle getLightStyle({double fontSize= FontSize.s12, Color fontColor=Colors.black}){
  return _getTextStyle(fontSize: fontSize,fontFamily: FontConstants.fontFamily,fontWeight: FontWeightManager.light,fontColor: fontColor);
}

TextStyle getBoldStyle({double fontSize= FontSize.s14, Color fontColor=Colors.black}){
  return _getTextStyle(fontSize: fontSize,fontFamily: FontConstants.fontFamily,fontWeight: FontWeightManager.bold,fontColor: fontColor);
}
TextStyle getSemiBoldStyle({double fontSize= FontSize.s12, Color fontColor=Colors.black}){
  return _getTextStyle(fontSize: fontSize,fontFamily: FontConstants.fontFamily,fontWeight: FontWeightManager.semiBold,fontColor: fontColor);
}

TextStyle getMediumStyle({double fontSize= FontSize.s12, Color fontColor=Colors.black}){
  return _getTextStyle(fontSize: fontSize,fontFamily: FontConstants.fontFamily,fontWeight: FontWeightManager.medium,fontColor: fontColor);
}
